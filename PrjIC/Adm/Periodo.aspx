<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Periodo.aspx.cs" Inherits="PrjIC.Adm.Periodo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">
        <div class="row">

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">   
                <div class="panel center dicaselecao">
                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">!</span>
                                   Observações Importantes Sobre o Cadastro de Períodos
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                     
                                    <ol>
                                        <li>Não cadastre períodos com datas sobrepostas! Caso elas estejam sobrepostas não será possível diferenciar
                                            a qual período uma avaliação pertence!
                                        </li>
                                        <li>Ao clicar no incone "+" automaticamente já será criada a relação de alunos por curso, por período,
                                            que devem ser editadas logo após, poìs são inseridas setadas todos os cursos com "0"!

                                        </li>
                                    </ol>
                                    Obs.: Não utilize as teclas de voltar e avançar do navegador!
                                </div>
                            </div>
                </div>

            </div>


            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">

                <div class="sessoes text-center">Cadastro de Períodos</div>

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
                                        <asp:TextBox id="txtds_Periodo" Text='<%# Eval("ds_Periodo") %>' runat="server" CssClass="form-control" />
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
                                            <asp:TextBox id="txtdt_Inicio" Text='<%# Eval("dt_Inicio", "{0:dd/MM/yyyy}") %>' runat="server" CssClass="form-control" />
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
                                        <asp:TextBox id="txtdt_Fim" Text='<%# Eval("dt_Fim", "{0:dd/MM/yyyy}") %>' runat="server" CssClass="form-control"/>
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
                                        <asp:TextBox id="txtnu_Ano_Referencia" Text='<%# Eval("nu_Ano_Referencia") %>' runat="server" CssClass="form-control" />
                                    </EditItemTemplate>  
                                    <FooterTemplate>
                                        <asp:TextBox runat="server" id="txtnu_Ano_ReferenciaFooter" placeholder="Digite o ano de referência!" CssClass="form-control" />
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Ação">
                                    <ItemTemplate>
                                        <div class="text-center">
                                            <asp:ImageButton runat="server" CommandName="Edit" ToolTip="Editar Período" ImageUrl="/img/icons/icone_editar.png" onmouseover="this.src='/img/icons/icone_editar_hover.png'" onmouseout="this.src='/img/icons/icone_editar.png'" CssClass="iconecrud"/>
                                        </div>
                                    </ItemTemplate>   
                                    <EditItemTemplate>
                                        <div class="text-center">
                                            <asp:ImageButton runat="server" CommandName="Update" ToolTip="Salvar Alterações" ImageUrl="/img/icons/icone_confirmar.png" onmouseover="this.src='/img/icons/icone_confirmar_hover.png'" onmouseout="this.src='/img/icons/icone_confirmar.png'" CssClass="iconecrud"/>
                                            <asp:ImageButton runat="server" CommandName="Cancel" ToolTip="Cancelar Alterações" ImageUrl="/img/icons/icone_cancelar.png" onmouseover="this.src='/img/icons/icone_cancelar_hover.png'" onmouseout="this.src='/img/icons/icone_cancelar.png'" CssClass="iconecrud"/>
                                        </div>
                                    </EditItemTemplate>  
                                    <FooterTemplate>
                                        <div class="text-center">
                                            <asp:ImageButton runat="server" CommandName="AddNew" ToolTip="Inserir Período" ImageUrl="/img/icons/icone_mais.png" onmouseover="this.src='/img/icons/icone_mais_hover.png'" onmouseout="this.src='/img/icons/icone_mais.png'" CssClass="iconecrud"/>
                                        </div>
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:Label runat="server" ID="lbErro" CssClass="notificaerro" Text=""></asp:Label>
                    </div>

            </div>
        </div>

    <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1 text-center">
                <a class="btnVoltarCruds" href="/Adm/Opcoes.aspx"><i class="fas fa-arrow-left"></i> Voltar</a>
            </div>
        </div>

    </div>

</asp:Content>
