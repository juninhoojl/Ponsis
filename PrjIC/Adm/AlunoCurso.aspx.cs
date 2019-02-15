using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using ProjetoIC.Classes;

namespace PrjIC.Adm
{
    public partial class AlunoCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.PopulateDropDown();
                //this.PopulateGridView();
            }
        }

        private void PopulateDropDown()
        {
            Conexao conn = new Conexao
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString
            };

            if (conn.AbrirConexao())
            {
                DataTable tabCurso = conn.RetornaTabela(@"select * from Periodo");

                if (tabCurso.Rows.Count > 0)
                {

                    tabCurso.Rows.Add(-1,"Selecione um período");
                    this.cmbPeriodo.DataSource     = tabCurso;
                    this.cmbPeriodo.DataTextField  = "ds_Periodo";
                    this.cmbPeriodo.DataValueField = "id_Periodo";
                    this.cmbPeriodo.DataBind();
                    this.cmbPeriodo.SelectedValue = "-1";
                }
                conn.FechaConexao();
            }
        }

        private void PopulateGridView()
        {
            Conexao conn = new Conexao
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString
            };

            if (conn.AbrirConexao())
            {
                long idPeriodo = -1;
                if (this.cmbPeriodo.SelectedItem.Value.Trim() != "-1")
                    idPeriodo = long.Parse("0" + this.cmbPeriodo.SelectedItem.Value.Trim());

                DataTable tabAlunoCurso = conn.RetornaTabela(@"select id_AlunoCurso, ds_Curso, nu_Alunos from AlunoCurso, Curso where AlunoCurso.id_Curso = Curso.id_Curso and id_Periodo = " + idPeriodo.ToString());

                if (tabAlunoCurso.Rows.Count > 0)
                {
                    this.dgvAlunoCurso.DataSource = tabAlunoCurso;
                    this.dgvAlunoCurso.DataBind();
                }
                else
                {
                    tabAlunoCurso.Rows.Add(tabAlunoCurso.NewRow());
                    this.dgvAlunoCurso.DataSource = tabAlunoCurso;
                    this.dgvAlunoCurso.DataBind();
                    this.dgvAlunoCurso.Rows[0].Cells.Clear();
                    this.dgvAlunoCurso.Rows[0].Cells.Add(new TableCell());
                    this.dgvAlunoCurso.Rows[0].Cells[0].ColumnSpan = tabAlunoCurso.Columns.Count;
                    this.dgvAlunoCurso.Rows[0].Cells[0].Text = "Nenhum período cadastrado!";
                    this.dgvAlunoCurso.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }
                conn.FechaConexao();
            }
        }

        protected void dgvAlunoCurso_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dgvAlunoCurso.EditIndex = e.NewEditIndex;
            PopulateGridView();

            this.lbErro.Visible = false;
        }

        protected void dgvAlunoCurso_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgvAlunoCurso.EditIndex = -1;
            PopulateGridView();

            this.lbErro.Visible = false;
        }

        protected void dgvAlunoCurso_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Conexao conn = new Conexao();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

                if (conn.AbrirConexao())
                {
                    string cmd = "UPDATE AlunoCurso SET nu_Alunos = @nuAlunos WHERE id_AlunoCurso = @id";

                    Dictionary<string, object> sqlParam = new Dictionary<string, object>();
                    sqlParam.Add("@id", long.Parse(this.dgvAlunoCurso.DataKeys[e.RowIndex].Value.ToString()));

                    var x4 = this.dgvAlunoCurso.Rows[e.RowIndex].FindControl("txtnu_Alunos") as TextBox;

                    sqlParam.Add("@nuAlunos", int.Parse(x4.Text.Trim()));

                    //Executa o comando
                    conn.ExecutaComando(cmd, sqlParam);
                    dgvAlunoCurso.EditIndex = -1;
                    this.PopulateGridView();

                    conn.FechaConexao();

                    this.lbErro.Visible = false;
                }
            }
            catch (Exception ex)
            {
                this.lbErro.Visible = true;
                this.lbErro.Text = "Falha na gravação dos dados: " + ex.Message;
            }
        }

        protected void cmbPeriodo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string selectedText = this.cmbPeriodo.SelectedItem.Text;
            //string selectedValue = this.cmbPeriodo.SelectedItem.Value;
            //long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim());
            this.PopulateGridView();
        }
    }
}