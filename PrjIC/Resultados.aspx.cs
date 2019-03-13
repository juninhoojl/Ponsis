using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using ProjetoIC.Classes;


namespace PrjIC
{
    public partial class Resultados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.TituloGridOA.Visible = false;
                this.gridResultadosOA.Visible = false;

                this.TituloGridPP.Visible = false;
                this.gridResultadosPP.Visible = false;

                this.TituloGridSI.Visible = false;
                this.gridResultadosSI.Visible = false;

                this.TituloGridBI.Visible = false;
                this.gridResultadosBI.Visible = false;

                this.TituloGridDP.Visible = false;
                this.gridResultadosDP.Visible = false;

                this.TituloGridEgresso.Visible = false;
                this.gridEgresso.Visible = false;

                this.TituloGridTempo.Visible = false;
                this.gridTempo.Visible = false;

                this.TituloGridPublicacoes.Visible = false;
                this.gridPublicacoes.Visible = false;

                this.PanelOpcoes.Visible = false;

                this.painelDicaResultados.Visible = true;

                this.DivInformacoes.Visible = false;
                this.DivAbertas.Visible = false;

                this.PopulateDropDownPeriodo();
                //this.PopulateDropDown3();
                this.PopulateDropDownCurso();
                //this.PopulateDropDownQuestao();
                this.PopulateDropDownQuestao();
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

        private void PopulateLIAlunos()
        {
            Conexao conn = new Conexao
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString
            };

            if (conn.AbrirConexao())
            {
                long nuAno = long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim());
                long idCurso = long.Parse(this.cmbCurso.SelectedItem.Value.Trim());

                DataTable tabQtAlunos = conn.RetornaTabela(String.Format(@"select nu_Alunos 
                                                                             from AlunoCurso, Periodo 
                                                                            where AlunoCurso.id_Periodo = Periodo.id_Periodo
                                                                              and id_Curso = {0} 
                                                                              and Periodo.nu_Ano_Referencia = {1}", idCurso, nuAno));

                this.liQtAlunos.Visible = true;

                if (tabQtAlunos.Rows.Count == 1)
                    this.liQtAlunos.InnerText = "Quantidade de alunos: " + tabQtAlunos.Rows[0][0].ToString();
                else
                    this.liQtAlunos.InnerText = "Quantidade de alunos: 0";

                conn.FechaConexao();
            }
        }

        private void PopulateLIQtResposta()
        {
            Conexao conn = new Conexao
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString
            };

            if (conn.AbrirConexao())
            {
                long nuAno = long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim());
                long idCurso = long.Parse(this.cmbCurso.SelectedItem.Value.Trim());

                DataTable tabQtResposta = conn.RetornaTabela(String.Format(@"
select Count(*) from Resposta, Periodo
 where Resposta.id_Periodo = Periodo.id_Periodo
   and Periodo.nu_Ano_Referencia = {0}
   and resposta.id_Curso = {1}
   and Resposta.id_Questao in (select Top(1) id_Questao from Questao where ds_Classificacao  ='SI')
",
                                                                        nuAno.ToString(),
                                                                        idCurso));

                this.liQtrepostas.Visible = true;

                this.liQtrepostas.InnerText = "Quantidade de respostas: " + tabQtResposta.Rows[0][0].ToString();

                conn.FechaConexao();
            }
        }

        private void PopulateLIAvalizacao()
        {
            Conexao conn = new Conexao();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

            if (conn.AbrirConexao())
            {
                long nuAno = long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim());

                DataTable tabPeriodo = conn.RetornaTabela(String.Format(@"select * from periodo where nu_Ano_Referencia = {0}", nuAno));

                if (tabPeriodo.Rows.Count == 1)
                    this.liAvaliacao.InnerText = String.Format("Período de avaliação: {0} a {1}",  
                                                               ((DateTime)tabPeriodo.Rows[0]["dt_Inicio"]).ToString("dd/MM/yyyy"),
                                                               ((DateTime)tabPeriodo.Rows[0]["dt_Fim"]).ToString("dd/MM/yyyy"));
                else
                    this.liAvaliacao.InnerText = "Período de avaliação: __/__/____ a __/__/____";

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

        private void PopulateDropDownQuestao()
        {
            Conexao conn = new Conexao
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString
            };

            if (conn.AbrirConexao())
            {
                DataTable tabQuestao = conn.RetornaTabela(@"select * from Questao where fx_Final = 0");

                if (tabQuestao.Rows.Count > 0)
                {
                    tabQuestao.Rows.Add(-1, 0, "Selecione uma Questão", "1");

                    this.cmbQuestao.DataSource = tabQuestao;
                    this.cmbQuestao.DataTextField = "ds_Questao";
                    this.cmbQuestao.DataValueField = "id_Questao";
                    this.cmbQuestao.DataBind();

                    this.cmbQuestao.SelectedValue = "-1";
                }
                conn.FechaConexao();
            }
        }


        /// <summary>
        /// Método chamado quando operíodo é selecionado
        /// carregarquestõesgerais
        /// </summary>


        private void PopulateGridViewResultadoCursoOA()
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
                DataTable tabUsuario = conn.RetornaTabela(@"select * from vw_Resultado_Ano_Curso WHERE Classificacao = 'OA' and Ano = " + nuAnoReferencia.ToString() + 
                                                            " and id_Curso = " + idCurso);

                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Resultado_Ano_Curso_OA.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_OA.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Resultado_Ano_Curso_OA.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_OA.DataBind();
                    this.dgvvw_Resultado_Ano_Curso_OA.Rows[0].Cells.Clear();
                    this.dgvvw_Resultado_Ano_Curso_OA.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Resultado_Ano_Curso_OA.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Resultado_Ano_Curso_OA.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Resultado_Ano_Curso_OA.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                this.HabilitaControles();

                conn.FechaConexao();
            }
        }

        private void PopulateGridViewResultadoCursoPP()
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
                {
                    idCurso = long.Parse("0" + this.cmbCurso.SelectedItem.Value.Trim());

                }
                    

                //Retorna view aqui
                DataTable tabUsuario = conn.RetornaTabela(@"select * from vw_Resultado_Ano_Curso WHERE Classificacao = 'PP' and Ano = " + nuAnoReferencia.ToString() +
                                                            " and id_Curso = " + idCurso);

                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Resultado_Ano_Curso_PP.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_PP.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Resultado_Ano_Curso_PP.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_PP.DataBind();
                    this.dgvvw_Resultado_Ano_Curso_PP.Rows[0].Cells.Clear();
                    this.dgvvw_Resultado_Ano_Curso_PP.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Resultado_Ano_Curso_PP.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Resultado_Ano_Curso_PP.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Resultado_Ano_Curso_PP.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                this.HabilitaControles();

                conn.FechaConexao();
            }
        }

        private void PopulateGridViewResultadoCursoSI()
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
                DataTable tabUsuario = conn.RetornaTabela(@"select * from vw_Resultado_Ano_Curso WHERE Classificacao = 'SI' and Ano = " + nuAnoReferencia.ToString() +
                                                            " and id_Curso = " + idCurso);

                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Resultado_Ano_Curso_SI.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_SI.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Resultado_Ano_Curso_SI.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_SI.DataBind();
                    this.dgvvw_Resultado_Ano_Curso_SI.Rows[0].Cells.Clear();
                    this.dgvvw_Resultado_Ano_Curso_SI.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Resultado_Ano_Curso_SI.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Resultado_Ano_Curso_SI.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Resultado_Ano_Curso_SI.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                this.HabilitaControles();

                conn.FechaConexao();
            }
        }

        private void PopulateGridViewPublicacoes()
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
                DataTable tabUsuario = conn.RetornaTabela(@"SELECT Periodo.nu_Ano_Referencia AS 'ANO', 
Curso.ds_Curso AS 'Curso', 
Questao.ds_Questao AS 'Questao', 
cast(Count(*) as decimal) as 'Total',
Count(case when Resposta.nu_Resposta =  0   then 1 else null end) as 'Q0',
Count(case when Resposta.nu_Resposta >  0  and Resposta.nu_Resposta < 5   then 1 else null end) as 'Q1',
Count(case when Resposta.nu_Resposta >  4  and Resposta.nu_Resposta < 9   then 1 else null end) as 'Q2',
Count(case when Resposta.nu_Resposta >  8  and Resposta.nu_Resposta < 13  then 1 else null end) as 'Q3',
Count(case when Resposta.nu_Resposta >  12                  then 1 else null end) as 'Q4'
FROM Resposta, Questao, Curso, Periodo
WHERE Resposta.id_Periodo = Periodo.id_Periodo
AND Resposta.id_Curso   = Curso.id_Curso
AND Resposta.id_Questao = Questao.id_Questao
AND Questao.tp_Questao <> 'text'
AND Questao.fx_Final = 15
AND Curso.id_Curso = " + idCurso + "AND Periodo.nu_Ano_Referencia = " + nuAnoReferencia.ToString() + "GROUP BY Periodo.nu_Ano_Referencia, Curso.ds_Curso, Questao.ds_Questao");

                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Publicacoes.DataSource = tabUsuario;
                    this.dgvvw_Publicacoes.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Publicacoes.DataSource = tabUsuario;
                    this.dgvvw_Publicacoes.DataBind();
                    this.dgvvw_Publicacoes.Rows[0].Cells.Clear();
                    this.dgvvw_Publicacoes.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Publicacoes.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Publicacoes.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Publicacoes.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                this.HabilitaControles();

                conn.FechaConexao();
            }
        }

        private void PopulateGridViewEgresso()
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
                DataTable tabUsuario = conn.RetornaTabela(@"SELECT Periodo.nu_Ano_Referencia AS 'ANO', 
Curso.ds_Curso AS 'Curso', 
Questao.ds_Questao AS 'Questao', 
Count(case when Resposta.nu_Resposta =  1                                 then 1 else null end) as 'Sim',
Count(case when Resposta.nu_Resposta =  0								 then 1 else null end) as 'Nao'
FROM Resposta, Questao, Curso, Periodo
WHERE Resposta.id_Periodo = Periodo.id_Periodo
AND Resposta.id_Curso   = Curso.id_Curso
AND Resposta.id_Questao = Questao.id_Questao
AND Questao.tp_Questao <> 'text'
AND Questao.fx_Final = 1
AND Curso.id_Curso = " + idCurso + "AND Periodo.nu_Ano_Referencia = " + nuAnoReferencia.ToString() + "GROUP BY Periodo.nu_Ano_Referencia, Curso.ds_Curso, Questao.ds_Questao");
                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Egresso.DataSource = tabUsuario;
                    this.dgvvw_Egresso.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Egresso.DataSource = tabUsuario;
                    this.dgvvw_Egresso.DataBind();
                    this.dgvvw_Egresso.Rows[0].Cells.Clear();
                    this.dgvvw_Egresso.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Egresso.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Egresso.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Egresso.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                this.HabilitaControles();

                conn.FechaConexao();
            }
        }


        private void PopulateGridViewTempo()
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
                DataTable tabUsuario = conn.RetornaTabela(@"SELECT Periodo.nu_Ano_Referencia AS 'ANO', 
Curso.ds_Curso AS 'Curso', 
Questao.ds_Questao AS 'Questao', 
Count(case when Resposta.nu_Resposta =  0                                 then 1 else null end) as 'T0',
Count(case when Resposta.nu_Resposta =  1                 then 1 else null end) as 'T1',
Count(case when Resposta.nu_Resposta =  2                 then 1 else null end) as 'T2',
Count(case when Resposta.nu_Resposta =  3                 then 1 else null end) as 'T3',
Count(case when Resposta.nu_Resposta =  4                 then 1 else null end) as 'T4'
FROM Resposta, Questao, Curso, Periodo
WHERE Resposta.id_Periodo = Periodo.id_Periodo
AND Resposta.id_Curso   = Curso.id_Curso
AND Resposta.id_Questao = Questao.id_Questao
AND Questao.tp_Questao <> 'text'
AND Questao.fx_Final = 4
AND Curso.id_Curso = " + idCurso + "AND Periodo.nu_Ano_Referencia = " + nuAnoReferencia.ToString() + "GROUP BY Periodo.nu_Ano_Referencia, Curso.ds_Curso, Questao.ds_Questao");

                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Tempo.DataSource = tabUsuario;
                    this.dgvvw_Tempo.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Tempo.DataSource = tabUsuario;
                    this.dgvvw_Tempo.DataBind();
                    this.dgvvw_Tempo.Rows[0].Cells.Clear();
                    this.dgvvw_Tempo.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Tempo.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Tempo.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Tempo.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                this.HabilitaControles();

                conn.FechaConexao();
            }
        }

        private void PopulateGridViewResultadoCursoBI()
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
                DataTable tabUsuario = conn.RetornaTabela(@"select * from vw_Resultado_Ano_Curso WHERE Classificacao = 'BI' and Ano = " + nuAnoReferencia.ToString() +
                                                            " and id_Curso = " + idCurso);

                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Resultado_Ano_Curso_BI.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_BI.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Resultado_Ano_Curso_BI.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_BI.DataBind();
                    this.dgvvw_Resultado_Ano_Curso_BI.Rows[0].Cells.Clear();
                    this.dgvvw_Resultado_Ano_Curso_BI.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Resultado_Ano_Curso_BI.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Resultado_Ano_Curso_BI.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Resultado_Ano_Curso_BI.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                this.HabilitaControles();

                conn.FechaConexao();
            }
        }

        private void PopulateGridViewResultadoCursoDP()
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
                DataTable tabUsuario = conn.RetornaTabela(@"select * from vw_Resultado_Ano_Curso WHERE Classificacao = 'DP' and Ano = " + nuAnoReferencia.ToString() +
                                                            " and id_Curso = " + idCurso);

                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Resultado_Ano_Curso_DP.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_DP.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Resultado_Ano_Curso_DP.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_DP.DataBind();
                    this.dgvvw_Resultado_Ano_Curso_DP.Rows[0].Cells.Clear();
                    this.dgvvw_Resultado_Ano_Curso_DP.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Resultado_Ano_Curso_DP.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Resultado_Ano_Curso_DP.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Resultado_Ano_Curso_DP.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }

                this.HabilitaControles();

                conn.FechaConexao();
            }
        }


        private void PopulateGridViewResultadoCursoAberto()
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

                long idQuestao = -1;
                if (this.cmbCurso.SelectedItem.Value.Trim() != "-1")
                    idQuestao = long.Parse("0" + this.cmbQuestao.SelectedItem.Value.Trim());

                //Retorna view aqui
                DataTable tabUsuario = conn.RetornaTabela(String.Format(@"select Resposta.id_Curso, Resposta.id_Questao, Resposta.tx_Resposta, Periodo.nu_Ano_Referencia 
  from Resposta, Periodo
 where Resposta.id_Periodo = Periodo.id_Periodo
   and Resposta.tx_Resposta is not null 
   and Len(ltrim(rtrim(Resposta.tx_Resposta))) > 0
   and Periodo.nu_Ano_Referencia = {0}  
   and Resposta.id_Curso = {1}
   and Resposta.id_Questao = {2}",
                                                                        nuAnoReferencia.ToString(),
                                                                        idCurso,
                                                                        idQuestao));




                //Aqui que tenho que retornar 
                if (tabUsuario.Rows.Count > 0)
                {
                    this.dgvvw_Resultado_Ano_Curso_Aberto.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_Aberto.DataBind();
                }
                else
                {
                    tabUsuario.Rows.Add(tabUsuario.NewRow());
                    this.dgvvw_Resultado_Ano_Curso_Aberto.DataSource = tabUsuario;
                    this.dgvvw_Resultado_Ano_Curso_Aberto.DataBind();
                    this.dgvvw_Resultado_Ano_Curso_Aberto.Rows[0].Cells.Clear();
                    this.dgvvw_Resultado_Ano_Curso_Aberto.Rows[0].Cells.Add(new TableCell());
                    this.dgvvw_Resultado_Ano_Curso_Aberto.Rows[0].Cells[0].ColumnSpan = tabUsuario.Columns.Count;
                    this.dgvvw_Resultado_Ano_Curso_Aberto.Rows[0].Cells[0].Text = "Nenhum resultado disponivel";
                    this.dgvvw_Resultado_Ano_Curso_Aberto.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }



                conn.FechaConexao();
            }
        }



        private void HabilitaControles()
        {
            if (long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim()) > 0 &&
                long.Parse(this.cmbCurso.SelectedItem.Value.Trim()) > 0)
            {
                this.DivInformacoes.Visible = true;
                this.DivAbertas.Visible = true;

                //Mostra grid so quando carrega
                this.TituloGridOA.Visible = true;
                this.gridResultadosOA.Visible = true;
                this.painelDicaResultados.Visible = false;

                this.TituloGridSI.Visible = true;
                this.gridResultadosSI.Visible = true;

                this.TituloGridPP.Visible = true;
                this.gridResultadosPP.Visible = true;
                this.painelDicaResultados.Visible = false;

                this.painelDicaResultados.Visible = false;
                this.TituloGridBI.Visible = true;
                this.gridResultadosBI.Visible = true;

                this.TituloGridDP.Visible = true;
                this.gridResultadosDP.Visible = true;
                this.painelDicaResultados.Visible = false;

                this.TituloGridPublicacoes.Visible = true;
                this.gridPublicacoes.Visible = true;
                this.painelDicaResultados.Visible = false;

                this.TituloGridTempo.Visible = true;
                this.gridTempo.Visible = true;
                this.painelDicaResultados.Visible = false;

                this.TituloGridEgresso.Visible = true;
                this.gridEgresso.Visible = true;
                this.painelDicaResultados.Visible = false;

                this.PanelOpcoes.Visible = true;

            }
        }

  
        #region Métodos de seleção de COMBOs

        private void CarregarDados()
        {
            if (long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim()) > 0 &&
                long.Parse(this.cmbCurso.SelectedItem.Value.Trim()) > 0)
            {
                this.PopulateGridViewResultadoCursoOA();
                this.PopulateGridViewResultadoCursoSI();
                this.PopulateGridViewResultadoCursoPP();
                this.PopulateGridViewResultadoCursoBI();
                this.PopulateGridViewResultadoCursoDP();
                this.PopulateGridViewPublicacoes();
                this.PopulateGridViewTempo();
                this.PopulateGridViewEgresso();

                if (long.Parse(this.cmbQuestao.SelectedItem.Value.Trim()) > 0)
                    this.PopulateGridViewResultadoCursoAberto();

                this.PopulateLIAlunos();
                this.PopulateLIQtResposta();
                this.PopulateLIAvalizacao();
            }
        }


        /// <summary>
        /// Método chamado quando a seleção do período é feita
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void cmbPeriodo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string selectedText = this.cmbPeriodo.SelectedItem.Text;
            //string selectedValue = this.cmbPeriodo.SelectedItem.Value;
            //long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim());
            this.CarregarDados();
        }

        /// <summary>
        /// Método chamado quando o curso é selecioado
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void cmbCurso_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.CarregarDados();
        }

        protected void cmbQuestao_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string selectedText = this.cmbPeriodo.SelectedItem.Text;
            //string selectedValue = this.cmbPeriodo.SelectedItem.Value;
            //long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim());

            this.CarregarDados();
        }

        #endregion Métodos de seleção de COMBOs
    }
}