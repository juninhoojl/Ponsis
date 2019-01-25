<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PrjIC.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="/js/login.js"></script>
    <link rel="stylesheet" type="text/css" href="css/login.css" />

    <div class="jumbotron vertical-center" style="background-color: transparent;">
        <div id="login">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-sm-12 col-md-7 col-lg-5">
                        <div class="login-box col-md-12">
                            <form id="login-form" class="form" action="" method="post">
                                <div class="text-center campo-login-titulo"> Login</div>
                                <br>
                                <input type="text" name="username" id="username" class="form-control" placeholder="Usuario">
                                <br>

                                <input type="password" name="password" id="myPassword" class="form-control" placeholder="Senha" />

                                <i class="fas fa-eye olho" onmouseover="mouseoverPass();" onmouseout="mouseoutPass();"></i>
                                <br>
                                <button type="submit" class="btn btn-block"><div class="enviar-botao">Login <i class="fas fa-sign-in-alt"></i></div></button>
                                <br>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
