<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Opcoes.aspx.cs" Inherits="PrjIC.Adm.Opcoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="form-box col-sm-12 col-md-7 col-lg-5">
                       
                            <form id="login-form" class="form" action="" method="post">
                                <div class="text-center titulo-form"> Cadastrar </div>
                                  <a class="btn btn-block" id="btnLinkPeriodo" href="/Adm/Periodo.aspx">Período</a>
                                  <a class="btn btn-block" id="btnLinkAluno" href="/Adm/AlunoCurso.aspx">Alunos/Período</a>
                                  <a class="btn btn-block" id="btnLinkUsuario" href="/Adm/Usuario.aspx">Usuários</a>
                            </form>

                    </div>
                </div>
            </div>

</asp:Content>
