using System;
using System.Web.Security;

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
            bool lvalidado = true;


            return lvalidado;
        }
    }
}