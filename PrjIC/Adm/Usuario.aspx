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
                                    <asp:TextBox runat="server" id="txtds_EmailFooter" placeholder="Digite o email!" CssClass="form-control " />

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

                                    <select runat="server" id="txtid_CursoFooter" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="0">Todos</option>
                                        <option value="1">Eng. Elétrica (mestrado ou doutorado)</option>
                                        <option value="2">Mecânica (mestrado ou doutorado)</option>
                                        <option value="3">Produção Acadêmico (mestrado ou doutorado)</option>
                                        <option value="4">Produção Profissional</option>
                                        <option value="5">PROFÁGUA</option>
                                        <option value="6">Materiais (mestrado ou doutorado)</option>
                                        <option value="7">Química Multicêntrico de MG (mestrado ou doutorado)</option>
                                        <option value="8">Energia</option>
                                        <option value="9">MEMARH</option>
                                        <option value="10">Computação</option>
                                        <option value="11">DTecS</option>
                                        <option value="12">Matemática</option>
                                        <option value="13">Física</option>
                                        <option value="14">Educação em Ciências</option>
                                        <option value="15">Eng. Materiais</option>
                                        <option value="16">Ensino de Ciências</option>
                                        <option value="17">Administração</option>
                                        <option value="18">Engenharia Hídrica</option>
                                    </select>

                                    
                                </FooterTemplate>

                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ação">
                                <ItemTemplate>
                                    

                                    <asp:ImageButton ImageUrl="~/img/icons/icone_menos.png" runat="server" CommandName="Delete" ToolTip="Excluir Usuário" Width="16px" Height="16px"/>

                                    
                                </ItemTemplate>   
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
