using System;
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
            if (this.Validar())
            {
                try
                {
                    //this.Session["NotaAtual"] = null;
                    //this.Session["NotaTodas"] = null;

                    FormsAuthentication.RedirectFromLoginPage("~/Adm/Opcoes.aspx", true);
                }
                catch (Exception ex)
                {
                }
            }
        }

        private bool Validar()
        {
            bool lvalidado = false;

            var nmPath = System.Web.HttpContext.Current.Server.MapPath("../admin.txt");

            if (System.IO.File.Exists(nmPath))
            {
                //var nmPathEmail = System.Web.HttpContext.Current.Server.MapPath("../email.txt");
                //string arquivoEmail  = System.IO.File.ReadAllText(nmPathEmail);
                //string host1 = Conexao.GetValor(arquivoEmail, "host:");
                //string user1 = Conexao.GetValor(arquivoEmail, "user:");
                //string password1 = Conexao.GetValor(arquivoEmail, "password:");
                //string nameUser1 = Conexao.GetValor(arquivoEmail, "nameUser:");

                string arquivo  = System.IO.File.ReadAllText(nmPath);
                string user     = Conexao.GetValor(arquivo, "user:");
                string password = Conexao.GetValor(arquivo, "password:");

                if (!String.IsNullOrWhiteSpace(user) && !String.IsNullOrWhiteSpace(password))
                    if (user.Equals(this.txtUsername.Value) && password.Equals(this.txtPassword.Value))
                        lvalidado = true;
            }

            this.lbErro.Visible = !lvalidado;

            return lvalidado;
        }
    }
}