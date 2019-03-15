using System;
using System.Configuration;
using System.Data;
using System.Web.Security;
using ProjetoIC.Classes;

namespace PrjIC.Adm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
            }
        }

        protected void btLogar_Click(object sender, EventArgs e)
        {
            if (this.ValidarAdmin())
            {
                try
                {
                    this.Session["Logado"] = true;
                    this.Session["Admin"]  = true;
                    this.Session["Curso"]  = -1;

                    FormsAuthentication.RedirectFromLoginPage("~/Adm/Opcoes.aspx", true);
                }
                catch (Exception ex)
                {
                }
            }
            else if (this.ValidarUsuario())
            {
                FormsAuthentication.RedirectFromLoginPage("~/Resultados.aspx", true);
            }
        }

        private bool ValidarAdmin()
        {
            bool lvalidado = false;

            var nmPath = System.Web.HttpContext.Current.Server.MapPath("../admin.txt");

            if (System.IO.File.Exists(nmPath))
            {
                string arquivo = System.IO.File.ReadAllText(nmPath);
                string user = Conexao.GetValor(arquivo, "user:");
                string password = Conexao.GetValor(arquivo, "password:");

                if (!String.IsNullOrWhiteSpace(user) && !String.IsNullOrWhiteSpace(password))
                    if (user.Equals(this.txtUsername.Value) && password.Equals(this.txtPassword.Value))
                        lvalidado = true;
            }

            this.lbErro.Visible = !lvalidado;

            return lvalidado;
        }
        private bool ValidarUsuario()
        {
            bool lvalidado = false;

            this.Session["Logado"] = false;
            this.Session["Admin"]  = false;
            this.Session["Curso"]  = 0;

            Conexao conn = new Conexao
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString
            };

            if (conn.AbrirConexao())
            {
                DataTable tabCurso = conn.RetornaTabela(String.Format(@"select * from Usuario where ds_Email = '{0}' AND ds_Senha = '{1}'",
                                                                      this.txtUsername.Value,
                                                                      this.txtPassword.Value));

                if (tabCurso.Rows.Count == 1)
                {
                    this.Session["Logado"] = true;
                    this.Session["Admin"]  = false;
                    if (tabCurso.Rows[0]["id_Curso"] == DBNull.Value)
                        this.Session["Curso"] = -1;
                    else
                        this.Session["Curso"]  = int.Parse(((long)tabCurso.Rows[0]["id_Curso"]).ToString());

                    lvalidado = true;
                }
                conn.FechaConexao();
            }

            this.lbErro.Visible = !lvalidado;

            return lvalidado;
        }
    }
}