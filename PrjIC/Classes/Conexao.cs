using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace ProjetoIC.Classes
{
    public class Conexao
    {
        private SqlConnection _con;

        /// <summary>
        /// Dados de conexao para SqlServer
        /// </summary>
        public string ConnectionString { get; set; }

        public Conexao() { }

        /// <summary>
        /// Construtor que recebe como parametro a ConnectionString
        /// </summary>
        /// <param name="ConnectionString"></param>
        public Conexao(string ConnectionString)
        {
            this.ConnectionString = ConnectionString;
        }

        /// <summary>
        /// Abre conexao
        /// </summary>
        public bool AbrirConexao()
        {
            if (string.IsNullOrEmpty(this.ConnectionString))
                throw new Exception("Não foi informado a ConnectionString.");

            if (this._con == null)
            {
                this._con = new SqlConnection();
                this._con.ConnectionString = this.ConnectionString;
            }

            this._con.Open();

            return this._con.State == ConnectionState.Open;
        }

        /// <summary>
        /// Fecha conexao
        /// </summary>
        public void FechaConexao()
        {
            if (this._con != null && this._con.State == ConnectionState.Open)
                this._con.Close();
        }

        /// <summary>
        /// Retorna tabela de dados
        /// </summary>
        /// <param name="sql"></param>
        /// <returns>Retorna Tabela de dados</returns>
        public DataTable RetornaTabela(string query)
        {
            DataTable tabela = new DataTable();

            SqlCommand cmd = new SqlCommand(query, this._con);
            if (this._con.State == ConnectionState.Open)
            {
                // create data adapter
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                // this will query your database and return the result to your datatable
                da.Fill(tabela);
            }

            return tabela;
        }

        /// <summary>
        /// Executa comando
        /// </summary>
        /// <param name="sql"></param>
        /// <returns>Retorna o total de linhas afetadas</returns>
        public int ExecutaComando(string sql)
        {
            if (string.IsNullOrEmpty(sql))
                throw new Exception("Não foi informado a query SQL.");

            if (this._con == null || this._con.State == ConnectionState.Closed)
                throw new Exception("A conexão fechada. Execute o comando AbrirConexao e não se esqueça de FecharConexao no final.");

            SqlCommand command = new SqlCommand();
            command.Connection = this._con;
            command.CommandText = sql;
            int result = command.ExecuteNonQuery();

            return result;
        }


        /// <summary>
        /// Executa comando
        /// </summary>
        /// <param name="sql"></param>
        /// <returns>Retorna o total de linhas afetadas</returns>
        public int ExecutaComando(string sql, Dictionary<string,object> sqlParam)
        {
            if (string.IsNullOrEmpty(sql))
                throw new Exception("Não foi informado a query SQL.");

            if (this._con == null || this._con.State == ConnectionState.Closed)
                throw new Exception("A conexão fechada. Execute o comando AbrirConexao e não se esqueça de FecharConexao no final.");

            SqlCommand command = new SqlCommand();
            command.Connection = this._con;
            command.CommandText = sql;
            foreach (KeyValuePair<string, object> item in sqlParam)
                command.Parameters.AddWithValue(item.Key,item.Value);

            int result = command.ExecuteNonQuery();

            return result;
        }
    }
}