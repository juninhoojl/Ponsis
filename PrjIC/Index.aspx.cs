using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using ProjetoIC.Classes;

namespace ProjetoIC
{
    public partial class Index : System.Web.UI.Page
    {
        private string _cmdSql = "INSERT INTO Resposta (id_Curso, id_Questao, id_Periodo, nu_Resposta, tx_Resposta) VALUES ({0}, {1}, {2}, {3}, {4});";
        private DataRow _rowPeriodo;
        private long _idPeriodo = -1;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.lbAno.Text = "";

            Conexao conn = new Conexao();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

            if (conn.AbrirConexao())
            {
                DataTable tabPeriodo = conn.RetornaTabela(@"select * from periodo
                                                                 where Convert(Date, getDate(), 120) >= Convert(Date, dt_Inicio, 120)
                                                                   and Convert(date, getdate(), 120) <= Convert(date, dt_Fim, 120)");

                if (tabPeriodo.Rows.Count == 1)
                {
                    this._rowPeriodo = tabPeriodo.Rows[0];

                    this.lbAno.Text = "Avaliação referente a " + this._rowPeriodo["nu_Ano_Referencia"] + "!";
                    this._idPeriodo = (long)this._rowPeriodo["id_Periodo"];

                    conn.FechaConexao();
                }
                else
                    Response.Redirect("indisponivel.html");
            }
        }

        protected void btEnviar_Click(object sender, EventArgs e)
        {
            if (this.Validar())
            {
                Conexao conn = new Conexao();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["ProjetoIC"].ConnectionString;

                if (conn.AbrirConexao())
                {
                    if (this._idPeriodo <= 0)
                        //Aqui poderia redirencionar para a pagina de indisponivel
                        this.ShowAlert(this, "Nenhuma avaliaçao esta disponível no momento!");
                    else
                    {
                        this.GravaDado(conn, 2, int.Parse(this.q2.Value));
                        this.GravaDado(conn, 3, int.Parse(this.q3.Value));
                        this.GravaDado(conn, 4, int.Parse(this.q4.Value));
                        this.GravaDado(conn, 5, int.Parse(this.q5.Value));
                        this.GravaDado(conn, 6, int.Parse(this.q6.Value));
                        this.GravaDado(conn, 7, this.q7.Text as string);
                        this.GravaDado(conn, 8, this.q8.Text as string);
                        this.GravaDado(conn,  9, int.Parse(this.q9.Value));
                        this.GravaDado(conn, 10, int.Parse(this.q10.Value));
                        this.GravaDado(conn, 11, int.Parse(this.q11.Value));
                        this.GravaDado(conn, 12, int.Parse(this.q12.Value));
                        this.GravaDado(conn, 13, int.Parse(this.q13.Value));
                        this.GravaDado(conn, 14, int.Parse(this.q14.Value));
                        this.GravaDado(conn, 15, this.q15.Text as string);
                        this.GravaDado(conn, 16, this.q16.Text as string);
                        this.GravaDado(conn, 17, int.Parse(this.q17.Value));
                        this.GravaDado(conn, 18, int.Parse(this.q18.Value));
                        this.GravaDado(conn, 19, int.Parse(this.q19.Value));
                        this.GravaDado(conn, 20, int.Parse(this.q20.Value));
                        this.GravaDado(conn, 21, int.Parse(this.q21.Value));
                        this.GravaDado(conn, 22, int.Parse(this.q22.Value));
                        this.GravaDado(conn, 23, int.Parse(this.q23.Value));
                        this.GravaDado(conn, 24, int.Parse(this.q24.Value));
                        this.GravaDado(conn, 25, int.Parse(this.q25.Value));
                        this.GravaDado(conn, 26, int.Parse(this.q26.Value));
                        this.GravaDado(conn, 27, this.q16.Text as string);

                        conn.FechaConexao();

                        Response.Redirect("respondido.html");
                    }
                }
            }
        }

        private void MostraMensagem(Label label, object control)
        {
            this.ShowAlert(this, "A pergunta: \"" + label.Text + "\" não foi respondida!");
            if (control is HtmlSelect)
                ((HtmlSelect)control).Focus();
            if (control is TextBox)
                ((TextBox)control).Focus();
        }

        private bool Validar()
        {
            bool lOk = false;

            if (String.IsNullOrWhiteSpace(this.q1.Value))
                this.MostraMensagem(this.lbq1, this.q1);
            else if (String.IsNullOrWhiteSpace(this.q2.Value))
                this.MostraMensagem(this.lbq2, this.q2);
            else if (String.IsNullOrWhiteSpace(this.q3.Value))
                this.MostraMensagem(this.lbq3, this.q3);
            else if (String.IsNullOrWhiteSpace(this.q4.Value))
                this.MostraMensagem(this.lbq4, this.q4);
            else if (String.IsNullOrWhiteSpace(this.q5.Value))
                this.MostraMensagem(this.lbq5, this.q5);
            else if (String.IsNullOrWhiteSpace(this.q6.Value))
                this.MostraMensagem(this.lbq6, this.q6);
            else if (String.IsNullOrWhiteSpace(this.q7.Text))
                this.MostraMensagem(this.lbq7, this.q7);
            else if (String.IsNullOrWhiteSpace(this.q8.Text))
                this.MostraMensagem(this.lbq8, this.q8);
            else if (String.IsNullOrWhiteSpace(this.q9.Value))
                this.MostraMensagem(this.lbq9, this.q9);
            else if (String.IsNullOrWhiteSpace(this.q10.Value))
                this.MostraMensagem(this.lbq10, this.q10);
            else if (String.IsNullOrWhiteSpace(this.q11.Value))
                this.MostraMensagem(this.lbq11, this.q11);
            else if (String.IsNullOrWhiteSpace(this.q12.Value))
                this.MostraMensagem(this.lbq12, this.q12);
            else if (String.IsNullOrWhiteSpace(this.q13.Value))
                this.MostraMensagem(this.lbq13, this.q13);
            else if (String.IsNullOrWhiteSpace(this.q14.Value))
                this.MostraMensagem(this.lbq14, this.q14);
            else if (String.IsNullOrWhiteSpace(this.q15.Text))
                this.MostraMensagem(this.lbq15, this.q15);
            else if (String.IsNullOrWhiteSpace(this.q16.Text))
                this.MostraMensagem(this.lbq16, this.q16);

            else if (String.IsNullOrWhiteSpace(this.q17.Value))
                this.MostraMensagem(this.lbq17, this.q17);

            else if (String.IsNullOrWhiteSpace(this.q18.Value))
                this.MostraMensagem(this.lbq18, this.q18);

            else if (String.IsNullOrWhiteSpace(this.q19.Value))
                this.MostraMensagem(this.lbq19, this.q19);

            else if (String.IsNullOrWhiteSpace(this.q20.Value))
                this.MostraMensagem(this.lbq20, this.q20);

            else if (String.IsNullOrWhiteSpace(this.q21.Value))
                this.MostraMensagem(this.lbq21, this.q21);

            else if (String.IsNullOrWhiteSpace(this.q22.Value))
                this.MostraMensagem(this.lbq22, this.q22);

            else if (String.IsNullOrWhiteSpace(this.q23.Value))
                this.MostraMensagem(this.lbq23, this.q23);

            else if (String.IsNullOrWhiteSpace(this.q24.Value))
                this.MostraMensagem(this.lbq24, this.q24);

            else if (String.IsNullOrWhiteSpace(this.q25.Value))
                this.MostraMensagem(this.lbq25, this.q25);

            else if (String.IsNullOrWhiteSpace(this.q26.Value))
                this.MostraMensagem(this.lbq26, this.q26);

            // Questao 27 eh opcional
            //else if (String.IsNullOrWhiteSpace(this.q27.Text))
            //    this.MostraMensagem(this.lbq27, this.q27);


            else
            {
                lOk = true;
            }

            return lOk;
        }

        /// ---- ShowAlert --------------------------------
        ///     
        /// <summary>
        /// popup a message box at the client    
        /// </summary>
        /// <param name="page">A Page Object</param>
        /// <param name="message">The Message to show</param>

        public void ShowAlert(Page page, String message)
        {
            this.Response.Write(@"<script language='javascript'>alert('" + message.Replace("'", "") + "!')</script>");
        }

        private void GravaDado(Conexao conn, int idQuestao, int nuResposta)
        {
            string cmd = String.Format(this._cmdSql, this.q1.Value, idQuestao, this._idPeriodo, nuResposta, "null");
            conn.ExecutaComando(cmd);
        }

        private void GravaDado(Conexao conn, int idQuestao, string dsResposta)
        {
            string cmd = String.Format(this._cmdSql, this.q1.Value, idQuestao, this._idPeriodo, "null", "'" + dsResposta + "'");
            conn.ExecutaComando(cmd);
        }
    }
}