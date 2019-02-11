<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Periodo.aspx.cs" Inherits="PrjIC.Adm.Periodo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">

                <div class="sessoes text-center">Cadastro de Períodos
                            
                        </div>

                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvPeriodo" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="id_Periodo"
                                        OnRowCommand="dgvPeriodo_RowCommand"
                                        OnRowUpdating="dgvPeriodo_RowUpdating"
                                        OnRowDeleting="dgvPeriodo_RowDeleting">

                        <Columns>

                            <asp:TemplateField HeaderText="Descrição">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("ds_Periodo") %>' runat="server"/>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox id="txtds_Periodo" Text='<%# Eval("ds_Periodo") %>' runat="server" />
                                </EditItemTemplate>                
                                <FooterTemplate>
                                    <asp:TextBox runat="server" id="txtds_PeriodoFooter" placeholder="Digite a descrição!" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Início">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("dt_Inicio", "{0:dd/MM/yyyy}") %>' runat="server"/>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox id="txtdt_Inicio" Text='<%# Eval("dt_Inicio", "{0:dd/MM/yyyy}") %>' runat="server" />
                                </EditItemTemplate>                
                                <FooterTemplate>
                                    <asp:TextBox runat="server" id="txtdt_InicioFooter" placeholder="Digite o início do período!" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Fim">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("dt_Fim", "{0:dd/MM/yyyy}") %>' runat="server"/>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox id="txtdt_Fim" Text='<%# Eval("dt_Fim", "{0:dd/MM/yyyy}") %>' runat="server" />
                                </EditItemTemplate>                
                                <FooterTemplate>
                                    <asp:TextBox runat="server" id="txtdt_FimFooter" placeholder="Digite o final do período!" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ano Referência">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("nu_Ano_Referencia") %>' runat="server"/>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox id="txtnu_Ano_Referencia" Text='<%# Eval("nu_Ano_Referencia") %>' runat="server" />
                                </EditItemTemplate>                
                                <FooterTemplate>
                                    <asp:TextBox runat="server" id="txtnu_Ano_ReferenciaFooter" placeholder="Digite o ano de referência!" CssClass="form-control" />
                                </FooterTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Ação">
                                <ItemTemplate>
                                    <asp:ImageButton ImageUrl="~/img/icons/icone_menos.png" runat="server" CommandName="Delete" ToolTip="Excluir Usuário" Width="16px" Height="16px"/>
                                    <asp:ImageButton ImageUrl="~/img/icons/icon_32x32.png" runat="server" CommandName="Update" ToolTip="Alterar Período" Width="16px" Height="16px"/>
                                </ItemTemplate>   
                                <EditItemTemplate>
                                    <asp:TextBox id="txtnu_Ano_Referencia" Text='<%# Eval("nu_Ano_Referencia") %>' runat="server" />
                                </EditItemTemplate>                
                                <FooterTemplate>
                                    <asp:ImageButton ImageUrl="~/img/icons/icone_mais.png" runat="server" CommandName="AddNew" ToolTip="Inserir Usuário" Width="16px" Height="16px"/>
                                </FooterTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
