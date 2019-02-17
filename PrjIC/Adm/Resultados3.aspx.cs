﻿using System;
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
                this.PopulateDropDown();
                this.PopulateGridView2();
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

                    tabCurso.Rows.Add(-1, "Selecione um período");
                    this.cmbPeriodo.DataSource = tabCurso;
                    this.cmbPeriodo.DataTextField = "ds_Periodo";
                    this.cmbPeriodo.DataValueField = "nu_Ano_Referencia";
                    this.cmbPeriodo.DataBind();
                    this.cmbPeriodo.SelectedValue = "-1";
                }
                conn.FechaConexao();
            }
        }

        protected void cmbAno_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string selectedText = this.cmbPeriodo.SelectedItem.Text;
            //string selectedValue = this.cmbPeriodo.SelectedItem.Value;
            //long.Parse(this.cmbPeriodo.SelectedItem.Value.Trim());
            this.PopulateGridView();
        }


        private void PopulateGridView()
        {
            Conexao conn = new Conexao();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

            if (conn.AbrirConexao())
            {

                long nuAnoReferencia = -1;
                if (this.cmbPeriodo.SelectedItem.Value.Trim() != "-1")
                    nuAnoReferencia = long.Parse("0" + this.cmbPeriodo.SelectedItem.Value.Trim());

                //Retorna view aqui
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

                conn.FechaConexao();
            }
        }

        //Funcao popular outra grid

        private void PopulateGridView2()
        {
            Conexao conn = new Conexao();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

            if (conn.AbrirConexao())
            {
                //Retorna view aqui
                DataTable tabUsuario = conn.RetornaTabela(@"select * from vw_Resultado_Ano_Curso WHERE Ano = 2018 AND Curso = 'Administração'");


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