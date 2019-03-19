using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Web.UI.WebControls;
using PrjIC.Classes;
using ProjetoIC.Classes;

namespace PrjIC.Adm
{
    public partial class Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.PopulateGridView();
            }
        }

        private void PopulateGridView()
        {
            Conexao conn = new Conexao();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

            if (conn.AbrirConexao())
            {
                //Antigo
                //DataTable tabUsuario = conn.RetornaTabela(@"select * from Usuario");

                DataTable tabUsuario = conn.RetornaTabela(@"
SELECT Usuario.id_Usuario, Usuario.ds_Email, Usuario.ds_Senha, Curso.ds_Curso
  FROM Usuario LEFT OUTER JOIN
       Curso ON Usuario.id_Curso = Curso.id_Curso");
                
                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    foreach (DataRow row in tabUsuario.Rows)
                    {
                        if (row["ds_Curso"] == DBNull.Value)
                            row["ds_Curso"] = "Todos";
                    }

                    this.dgvUsuario.DataSource = tabUsuario;
                    this.dgvUsuario.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvUsuario.DataSource = tabUsuario;
                    this.dgvUsuario.DataBind();
                    this.dgvUsuario.Rows[0].Cells.Clear();
                    this.dgvUsuario.Rows[0].Cells.Add(new TableCell());
                    this.dgvUsuario.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvUsuario.Rows[0].Cells[0].Text = "Nenhum usuário cadastrado!";
                    this.dgvUsuario.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }

                conn.FechaConexao();
                this.lbErro.Visible = false;
            }
        }

        protected void dgvUsuario_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                Conexao conn = new Conexao();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

                if (conn.AbrirConexao())
                {
                    string cmd = "delete from Usuario where id_Usuario = @id";

                    Dictionary<string, object> sqlParam = new Dictionary<string, object>();
                    sqlParam.Add("@id", Convert.ToInt32(this.dgvUsuario.DataKeys[e.RowIndex].Value.ToString()));
                    conn.ExecutaComando(cmd, sqlParam);
                    this.PopulateGridView();

                    conn.FechaConexao();
                    this.lbErro.Visible = false;
                }
            }
            catch (Exception ex)
            {
                this.lbErro.Visible = true;
                this.lbErro.Text = "Falha na exclusão de usuário: " + ex.Message;
            }
        }

        protected void dgvUsuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddNew"))
            {
                try
                {
                    System.Web.UI.HtmlControls.HtmlSelect ctrlSelect = this.dgvUsuario.FooterRow.FindControl("txtid_CursoFooter") as System.Web.UI.HtmlControls.HtmlSelect;
                    
                    Conexao conn = new Conexao();
                    conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

                    if (conn.AbrirConexao())
                    {
                        string newSenha  = Guid.NewGuid().ToString().Substring(0,8);
                        TextBox txtEmail = this.dgvUsuario.FooterRow.FindControl("txtds_EmailFooter") as TextBox;

                        var nmPath = System.Web.HttpContext.Current.Server.MapPath("../email.txt");
                        var nmPathEmail = System.Web.HttpContext.Current.Server.MapPath("../template_email.html");

                        if (System.IO.File.Exists(nmPath))
                        {
                            string dsEmail  = System.IO.File.ReadAllText(nmPathEmail);
                            string arquivo  = System.IO.File.ReadAllText(nmPath);
                            string host     = Conexao.GetValor(arquivo, "host:");
                            string user     = Conexao.GetValor(arquivo, "user:");
                            string password = Conexao.GetValor(arquivo, "password:");
                            string nameUser = Conexao.GetValor(arquivo, "nameUser:");
                            int port        = int.Parse(Conexao.GetValor(arquivo, "port:"));
                            bool   ssl      = Conexao.GetValor(arquivo, "ssl:").ToLower().Equals("true");

                            Email email     = new Email();
                            email.MailFrom  = new MailAddress(user, nameUser);
                            email.SmtpHost  = host;
                            email.SmtpLogin = user;
                            email.SmtpSenha = password;
                            email.SmtpSsl   = ssl;
                            email.SmtpPorta = port;
                            email.TimeOut   = 100000;

                            if (email.EnviarEmail(txtEmail.Text.Trim(),
                                                  "Registro para Login do 'Sistema de Avaliação de Pós-Graduação'",
                                                  dsEmail.Replace("#@SENHA@#", newSenha)))
                            {
                                string cmd = "insert into Usuario (ds_Email, ds_Senha, id_Curso) values (@dsEmail, @dsSenha, @idCurso)";

                                Dictionary<string, object> sqlParam = new Dictionary<string, object>();

                                sqlParam.Add("@dsEmail", txtEmail.Text.Trim());
                                sqlParam.Add("@dsSenha", newSenha);
                                if (int.Parse(ctrlSelect.Value) > 0)
                                    sqlParam.Add("@idCurso", int.Parse(ctrlSelect.Value));
                                else
                                    sqlParam.Add("@idCurso", DBNull.Value);
                                conn.ExecutaComando(cmd, sqlParam);
                                this.PopulateGridView();

                                conn.FechaConexao();
                            }
                            else
                            {

                            }
                        }




                        this.lbErro.Visible = false;

                        //this.c.dgvUsuario.EditIndex.SelectedIndex = -1;
                    }
                }
                catch (Exception ex)
                {
                    this.lbErro.Visible = true;
                    this.lbErro.Text = "Falha na inserção de usuário: " + ex.Message;
                }
            }
        }
    }
}