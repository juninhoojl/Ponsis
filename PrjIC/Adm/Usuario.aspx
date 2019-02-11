<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="PrjIC.Adm.Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">

                <div class="sessoes text-center">Cadastro de Usuários
                            
                        </div>

                <div class="table-responsive ">



                    <asp:GridView CssClass="gridview" ID="dgvUsuario" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="id_Usuario"
                        OnRowCommand="dgvUsuario_RowCommand"
                        OnRowDeleting="dgvUsuario_RowDeleting">

                        <Columns>

                            <asp:TemplateField HeaderText="E-mail">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("ds_Email") %>' runat="server"/>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox id="txtds_Email" Text='<%# Eval("ds_Email") %>' runat="server" />
                                </EditItemTemplate>                
                                <FooterTemplate>
                                    <asp:TextBox class="form-control" id="txtds_EmailFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField  HeaderText="Curso">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("id_Curso") %>' runat="server"/>
                                </ItemTemplate>

                                <EditItemTemplate>
                                    <asp:TextBox id="txtid_Curso" Text='<%# Eval("id_Curso") %>' runat="server" />
                                </EditItemTemplate>       
                                
                                <FooterTemplate>
                                    <asp:TextBox class="form-control" id="txtid_CursoFooter" runat="server" />
                                </FooterTemplate>

                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Opção">
                                <ItemTemplate>

                                    <asp:ImageButton ImageUrl="~/img/icons/icon_16x16.png" runat="server" CommandName="Delete" ToolTip="Excluir Usuário" Width="16px" Height="16px"/>
                                </ItemTemplate>   
                                <FooterTemplate>
                                    
                                    <asp:ImageButton ImageUrl="~/img/icons/icon_16x16.png" runat="server" CommandName="AddNew" ToolTip="Inserir Usuário" Width="16px" Height="16px"/>
                                </FooterTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
