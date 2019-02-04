<%@ Page Title="" Language="C#" MasterPageFile="~/Adm/Site1.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="PrjIC.Adm.Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="dgvUsuario" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="id_Usuario"
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
                    <asp:TextBox id="txtds_EmailFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Curso">
                <ItemTemplate>
                    <asp:label Text='<%# Eval("id_Curso") %>' runat="server"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox id="txtid_Curso" Text='<%# Eval("id_Curso") %>' runat="server" />
                </EditItemTemplate>                
                <FooterTemplate>
                    <asp:TextBox id="txtid_CursoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Curso">
                <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/img/icons/icon_16x16.png" runat="server" CommandName="Delete" ToolTip="Exclui o usuário" Width="16px" Height="16px"/>
                </ItemTemplate>   
                <FooterTemplate>
                    <asp:ImageButton ImageUrl="~/img/icons/icon_16x16.png" runat="server" CommandName="AddNew" ToolTip="Inclui o usuário" Width="16px" Height="16px"/>
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>



</asp:Content>
