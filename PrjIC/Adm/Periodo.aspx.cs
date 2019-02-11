using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using ProjetoIC.Classes;

namespace PrjIC.Adm
{
    public partial class Periodo : System.Web.UI.Page
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
                DataTable tabPeriodo = conn.RetornaTabela(@"select * from Periodo");

                if (tabPeriodo.Rows.Count > 0)
                {
                    this.dgvPeriodo.DataSource = tabPeriodo;
                    this.dgvPeriodo.DataBind();
                }
                else
                {
                    tabPeriodo.Rows.Add(tabPeriodo.NewRow());
                    this.dgvPeriodo.DataSource = tabPeriodo;
                    this.dgvPeriodo.DataBind();
                    this.dgvPeriodo.Rows[0].Cells.Clear();
                    this.dgvPeriodo.Rows[0].Cells.Add(new TableCell());
                    this.dgvPeriodo.Rows[0].Cells[0].ColumnSpan = tabPeriodo.Columns.Count;
                    this.dgvPeriodo.Rows[0].Cells[0].Text = "Nenhum período cadastrado!";
                    this.dgvPeriodo.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                conn.FechaConexao();
            }
        }

        protected void dgvPeriodo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                Conexao conn = new Conexao();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

                if (conn.AbrirConexao())
                {
                    string cmd = "delete from Periodo where id_Periodo = @id";

                    Dictionary<string, object> sqlParam = new Dictionary<string, object>();
                    sqlParam.Add("@id", Convert.ToInt32(this.dgvPeriodo.DataKeys[e.RowIndex].Value.ToString()));
                    conn.ExecutaComando(cmd, sqlParam);
                    this.PopulateGridView();

                    conn.FechaConexao();
                }
            }
            catch (Exception)
            {

            }
        }

        protected void dgvPeriodo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddNew"))
            {
                try
                {
                    Conexao conn = new Conexao();
                    conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

                    int idPeriodo = -1;

                    if (conn.AbrirConexao())
                    {
                        string cmd = "insert into Periodo (ds_Periodo, dt_Inicio, dt_Fim, nu_Ano_Referencia) values (@dsPeriodo, @dtInicio, @dtFim, @nuAnoReferencia);";

                        Dictionary<string, object> sqlParam = new Dictionary<string, object>();

                        var x1 = this.dgvPeriodo.FooterRow.FindControl("txtds_PeriodoFooter") as TextBox;
                        var x2 = this.dgvPeriodo.FooterRow.FindControl("txtdt_InicioFooter") as TextBox;
                        var x3 = this.dgvPeriodo.FooterRow.FindControl("txtdt_FimFooter") as TextBox;
                        var x4 = this.dgvPeriodo.FooterRow.FindControl("txtnu_Ano_ReferenciaFooter") as TextBox;
                        sqlParam.Add("@dsPeriodo",          x1.Text.Trim());
                        sqlParam.Add("@dtInicio",           DateTime.Parse(x2.Text));
                        sqlParam.Add("@dtFim",              DateTime.Parse(x3.Text));
                        sqlParam.Add("@nuAnoReferencia",    int.Parse(x4.Text.Trim()));
                        conn.ExecutaComando(cmd, sqlParam);

                        DataTable xxxxxx = conn.RetornaTabela(@"SELECT IDENT_CURRENT('Periodo');");
                        idPeriodo = int.Parse(((decimal)xxxxxx.Rows[0][0]).ToString());

                        DataTable tabCursos = conn.RetornaTabela(@"select * from Curso");
                        foreach (DataRow row in tabCursos.Rows)
                        {
                            cmd = "insert into AlunoCurso (id_Curso, id_Periodo, nu_Alunos) values (@idCurso, @idPeriodo, @nuAlunos);";

                            sqlParam = new Dictionary<string, object>();
                            sqlParam.Add("@idCurso",   (long)row["id_Curso"]);
                            sqlParam.Add("@idPeriodo", idPeriodo);
                            sqlParam.Add("@nuAlunos",  0);
                            conn.ExecutaComando(cmd, sqlParam);
                        }

                        this.PopulateGridView();

                        conn.FechaConexao();
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void dgvPeriodo_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Conexao conn = new Conexao();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

                if (conn.AbrirConexao())
                {
                    string cmd = "update Periodo set ds_Periodo = @dsPeriodo, dt_Inicio = @dtInicio, dt_Fim = @dtFim, nu_Ano_Referencia = @nuAnoReferencia where id_Periodo = @id";

                    Dictionary<string, object> sqlParam = new Dictionary<string, object>();
                    sqlParam.Add("@id", Convert.ToInt32(this.dgvPeriodo.DataKeys[e.RowIndex].Value.ToString()));

                    var x1 = this.dgvPeriodo.SelectedRow.FindControl("txtds_PeriodoFooter") as TextBox;
                    var x2 = this.dgvPeriodo.SelectedRow.FindControl("txtdt_InicioFooter") as TextBox;
                    var x3 = this.dgvPeriodo.SelectedRow.FindControl("txtdt_FimFooter") as TextBox;
                    var x4 = this.dgvPeriodo.SelectedRow.FindControl("txtnu_Ano_ReferenciaFooter") as TextBox;

                    sqlParam.Add("@dsPeriodo", x1.Text.Trim());
                    sqlParam.Add("@dtInicio", DateTime.Parse(x2.Text));
                    sqlParam.Add("@dtFim", DateTime.Parse(x3.Text));
                    sqlParam.Add("@nuAnoReferencia", int.Parse(x4.Text.Trim()));

                    conn.ExecutaComando(cmd, sqlParam);
                    this.PopulateGridView();

                    conn.FechaConexao();
                }
            }
            catch (Exception)
            {

            }
        }
    }
}