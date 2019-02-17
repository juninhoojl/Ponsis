<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Resultados3.aspx.cs" Inherits="PrjIC.Adm.Resultados3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">

                <div class="sessoes text-center">Resultados</div>

                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="id_vw_Resultado_Ano">

                        <Columns>

                           <asp:TemplateField HeaderText="Ano">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Ano") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Questao">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Questao") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Classificacao">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Classificacao") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Qtd_Total_Resposta">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Total_Resposta") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Qtd_Ignorado">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Ignorado") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Qtd_Detrator">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Detrator") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Qtd_Neutro">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Neutro") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Qtd_Promotor">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Promotor") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Qtd_Desconhecido">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Desconhecido") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
    
                </div>
            </div>
        </div>
    </div>



</asp:Content>
