<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PrjIC.Adm.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="form-box col-sm-12 col-md-7 col-lg-5">
                       
                            <form id="login-form" class="form" action="" method="post">
                                <div class="text-center titulo-form"> Login</div>
                                <br>
                                <input type="text" name="username" id="username" class="form-control" placeholder="Usuario">
                                <br>
                                <input type="password" name="password" id="myPassword" class="form-control" placeholder="Senha" />
                                <i class="fas fa-eye olho" onmouseover="mouseoverPass();" onmouseout="mouseoutPass();"></i>
              
                                <asp:button runat="server" class="btn btn-block" id="btnEnviar" type="submit" Text="Enviar" OnClick="btLogar_Click"/>

                                <br>
                            </form>
                      
                    </div>
                </div>
            </div>



</asp:Content>
