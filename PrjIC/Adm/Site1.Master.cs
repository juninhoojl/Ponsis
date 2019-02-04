using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjIC.Adm
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                this.btnEntrar.Visible = false;
                this.btnSair.Visible = true;
            }
            else
            {
                this.btnEntrar.Visible = true;
                this.btnSair.Visible = false;
            }

            this.MainContent.Load += MainContent_Load;
        }

        private void MainContent_Load(object sender, EventArgs e)
        {
           // if (sender is System.Web.UI.WebControls.ContentPlaceHolder ctrl)
           // {
           //     if (ctrl.Page is Page pagina)
           //     {
           //         if (pagina.AppRelativeVirtualPath.Contains("Login"))
           //         {
           //             this.btnEntrar.Visible = false;
           //         }
            //        else
           //         {
           //         }
           //     }
           // }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {

            this.Response.Redirect("~/Adm/Opcoes.aspx");
        }
        protected void btnSair_Click(object sender, EventArgs e)
        {
            //this.Session["nmCliente"] = null;
            //this.Session["cdIdentificacao"] = null;
            //this.Session["cnpjEmpresa"] = null;

            FormsAuthentication.SignOut();
            this.Response.Redirect("~/Apresentacao.aspx");
        }

        protected void ContentPlaceHolder_Load(object sender, EventArgs e)
        {

        }
    }
}