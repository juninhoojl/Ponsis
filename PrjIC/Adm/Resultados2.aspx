<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="PrjIC.Adm.Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">

                <div class="sessoes text-center">Resultados</div>

                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="id_vw_Resultado_Ano">

                        <Columns>

                            <asp:TemplateField HeaderText="E-mail">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("ds_Email") %>' runat="server"/>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField  HeaderText="Curso">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("ds_Curso") %>' runat="server"/>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
