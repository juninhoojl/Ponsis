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
                                      OnRowEditing="dgvPeriodo_RowEditing"
                                      OnRowDeleting="dgvPeriodo_RowDeleting"
                                      OnRowCancelingEdit="dgvPeriodo_RowCancelingEdit">
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
                                    <div class="text-center">
                                        <asp:ImageButton ImageUrl="~/img/icons/icone_editar.png" runat="server" CommandName="Edit" ToolTip="Alterar Período" Width="1em" Height="1em"/>
                                   
                                    </div>
                                </ItemTemplate>   
                                <EditItemTemplate>
                                    <div class="text-center">
                                        <asp:ImageButton ImageUrl="~/img/icons/icone_confirmar.png" runat="server" CommandName="Update" ToolTip="Salvar Alterações" Width="1em" Height="1em"/>
                                        
                                        <asp:ImageButton ImageUrl="~/img/icons/icone_cancelar.png" runat="server" CommandName="Cancel" ToolTip="Cancelar Alterações" Width="1em" Height="1em"/>
                                    </div>
                                </EditItemTemplate>  
                                <FooterTemplate>
                                    <div class="text-center">
                                        <asp:ImageButton ImageUrl="~/img/icons/icone_mais.png" runat="server" CommandName="AddNew" ToolTip="Inserir novo período" Width="1em" Height="1em"/>
                                    </div>
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:Label runat="server" ID="lbErro" ForeColor="#AF9CED" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
