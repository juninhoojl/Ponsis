<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PrjIC.Adm.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
    <div class="row justify-content-center align-items-center">
        <div class="form-box col-sm-12 col-md-7 col-lg-5">
            <form id="login-form" class="form" method="post">
                <div class="text-center titulo-form">Login</div>
                <br>
                <input runat="server" type="text" name="username" id="txtUsername" class="form-control" placeholder="Usuario">
                <br>
                <input runat="server" type="password" name="password" id="txtPassword" class="form-control" placeholder="Senha" />

                <asp:Button runat="server" class="btn btn-block" ID="btnEnviar" type="" Text="Enviar" OnClick="btLogar_Click" />
                
                <asp:Label runat="server" ID="lbErro" Visible="false">Usuário e/ou senha inválidos</asp:Label>
            </form>
        </div>
    </div>
</div>

</asp:Content>
