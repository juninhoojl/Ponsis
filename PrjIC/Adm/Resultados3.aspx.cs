using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using ProjetoIC.Classes;


namespace PrjIC.Adm
{
    public partial class Resultados3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.divResultadoCurso.Visible = false;
                this.divResultadoGeral.Visible = false;
                this.gridResultados.Visible = false;

                this.painelDicaResultados.Visible = true;

                this.cmbCurso.Visible = false;


                this.PopulateDropDownPeriodo();
                //this.PopulateDropDown3();
                this.PopulateDropDownCurso();
                //this.PopulateDropDownQuestao();
            }
        }

        private void PopulateDropDownPeriodo()
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
                    tabCurso.Rows.Add(-1, "Selecione um Período", null,null, -1000);
                    this.cmbPeriodo.DataSource = tabCurso;
                    this.cmbPeriodo.DataTextField = "ds_Periodo";
                    this.cmbPeriodo.DataValueField = "nu_Ano_Referencia";
                    this.cmbPeriodo.DataBind();
                    this.cmbPeriodo.SelectedValue = "-1000";
                }
                conn.FechaConexao();
            }
        }

        private void PopulateDropDownCurso()
        {
            Conexao conn = new Conexao
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString
            };

            if (conn.AbrirConexao())
            {
                DataTable tabCurso = conn.RetornaTabela(@"select * from Curso");

                if (tabCurso.Rows.Count > 0)
                {

                    tabCurso.Rows.Add(-1, "Selecione um Curso");
                    this.cmbCurso.DataSource = tabCurso;
                    this.cmbCurso.DataTextField = "ds_Curso";
                    this.cmbCurso.DataValueField = "id_Curso";
                    this.cmbCurso.DataBind();
                    this.cmbCurso.SelectedValue = "-1";
                }
                conn.FechaConexao();
            }
        }

        /// <summary>
        /// Método chamado quando a seleção do período é feita
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void cmbAno_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string selectedText = this.cmbPeriodo.SelectedItem.Text;
            //string selectedValue = this.cmbPeriodo.SelectedItem.Value;
            //long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim());
            this.PopulateGridViewResultadoGeral();
        }

        /// <summary>
        /// Método chamado quando o curso é selecioado
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void cmbCurso_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.PopulateGridViewResultadoCurso();
        }

        /// <summary>
        /// Método chamado quando operíodo é selecionado
        /// carregarquestõesgerais
        /// </summary>
        private void PopulateGridViewResultadoGeral()
        {
            Conexao conn = new Conexao();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

            if (conn.AbrirConexao())
            {
                long nuAnoReferencia = -1;
                if (this.cmbPeriodo.SelectedItem.Value.Trim() != "-1")
                    nuAnoReferencia = long.Parse("0" + this.cmbPeriodo.SelectedItem.Value.Trim());
               
                //Retorna view aqui
                //DataTable tabUsuario = conn.RetornaTabela(@"select * from vw_Resultado_Ano WHERE Ano = " + nuAnoReferencia.ToString() + "AND Questao = " + "'Como você avalia o acervo da Biblioteca (BIM)?'");
                DataTable tabUsuario = conn.RetornaTabela(@"select * from vw_Resultado_Ano WHERE Ano = " + nuAnoReferencia.ToString());

                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Resultado_Ano.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Resultado_Ano.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano.DataBind();
                    this.dgvvw_Resultado_Ano.Rows[0].Cells.Clear();
                    this.dgvvw_Resultado_Ano.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Resultado_Ano.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Resultado_Ano.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Resultado_Ano.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }

                this.divResultadoGeral.Visible = true;
                this.divResultadoCurso.Visible = true;
                this.gridResultados.Visible = true;
                this.painelDicaResultados.Visible = false;
                this.cmbCurso.Visible = true;

                conn.FechaConexao();
            }
        }

        private void PopulateGridViewResultadoCurso()
        {
            Conexao conn = new Conexao();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

            if (conn.AbrirConexao())
            {
                long nuAnoReferencia = -1;
                if (this.cmbPeriodo.SelectedItem.Value.Trim() != "-1")
                    nuAnoReferencia = long.Parse("0" + this.cmbPeriodo.SelectedItem.Value.Trim());
                long idCurso = -1;
                if (this.cmbCurso.SelectedItem.Value.Trim() != "-1")
                    idCurso = long.Parse("0" + this.cmbCurso.SelectedItem.Value.Trim());

                //Retorna view aqui
                DataTable tabUsuario = conn.RetornaTabela(@"select * from vw_Resultado_Ano_Curso WHERE Ano = " + nuAnoReferencia.ToString() + 
                                                            " and id_Curso = " + idCurso);

                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Resultado_Ano_Curso.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Resultado_Ano_Curso.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso.DataBind();
                    this.dgvvw_Resultado_Ano_Curso.Rows[0].Cells.Clear();
                    this.dgvvw_Resultado_Ano_Curso.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Resultado_Ano_Curso.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Resultado_Ano_Curso.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Resultado_Ano_Curso.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                conn.FechaConexao();
            }
        }


    }


}