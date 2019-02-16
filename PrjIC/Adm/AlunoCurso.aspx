<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="AlunoCurso.aspx.cs" Inherits="PrjIC.Adm.AlunoCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div class="sessoes text-center">Cadastro de Alunos por Período</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1 combo-periodos">
                 <asp:dropdownlist runat="server" CssClass="form-control" id="cmbPeriodo" autopostback="true" onselectedindexchanged="cmbPeriodo_SelectedIndexChanged">
                        </asp:dropdownlist>
             </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">

                
                    

                        
                    
                    <div class="table-responsive">
                            <asp:GridView CssClass="gridview" ID="dgvAlunoCurso" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="id_AlunoCurso"
                                          
                                          OnRowUpdating="dgvAlunoCurso_RowUpdating"
                                          OnRowEditing="dgvAlunoCurso_RowEditing"
                                          OnRowCancelingEdit="dgvAlunoCurso_RowCancelingEdit">
                                 
                                <Columns>
                         
                                <asp:TemplateField HeaderText="Curso">
                                    <ItemTemplate>
                                        <asp:label Text='<%# Eval("ds_Curso") %>' runat="server"/>
                                    </ItemTemplate>

                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Quantidade de Alunos">
                                    <ItemTemplate>
                                        <asp:label Text='<%# Eval("nu_Alunos") %>' runat="server"/>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox id="txtnu_Alunos" Text='<%# Eval("nu_Alunos") %>' runat="server" CssClass="form-control" />
                                    </EditItemTemplate>  

                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Ação">
                                    <ItemTemplate>
                                        <div class="text-center">
                                            <asp:ImageButton runat="server" CommandName="Edit" ToolTip="Editar Quantidade" ImageUrl="/img/icons/icone_editar.png" onmouseover="this.src='/img/icons/icone_editar_hover.png'" onmouseout="this.src='/img/icons/icone_editar.png'" CssClass="iconecrud"/>
                                        </div>
                                    </ItemTemplate>   
                                    <EditItemTemplate>
                                        <div class="text-center">
                                            <asp:ImageButton runat="server" CommandName="Update" ToolTip="Salvar Alteração" ImageUrl="/img/icons/icone_confirmar.png" onmouseover="this.src='/img/icons/icone_confirmar_hover.png'" onmouseout="this.src='/img/icons/icone_confirmar.png'" CssClass="iconecrud"/>
                                            <asp:ImageButton runat="server" CommandName="Cancel" ToolTip="Cancelar Alteração" ImageUrl="/img/icons/icone_cancelar.png" onmouseover="this.src='/img/icons/icone_cancelar_hover.png'" onmouseout="this.src='/img/icons/icone_cancelar.png'" CssClass="iconecrud"/>
                                        </div>
                                    </EditItemTemplate>  

                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>
                        <asp:Label runat="server" ID="lbErro" CssClass="notificaerro" Text=""></asp:Label>
                    </div>

            </div>
        </div>
     </div>
      
</asp:Content>
