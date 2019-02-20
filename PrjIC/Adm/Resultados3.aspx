<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Resultados3.aspx.cs" Inherits="PrjIC.Adm.Resultados3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container-fluid">
        <div class="row">

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div class="sessoes text-center">Resultados Gerais</div>
            </div>

            <div class="col-sm-12 col-md-6 offset-lg-1 col-lg-5 combo-periodos">   
                <asp:dropdownlist runat="server" CssClass="form-control" id="cmbPeriodo" autopostback="true" onselectedindexchanged="cmbAno_SelectedIndexChanged">
                    </asp:dropdownlist>
            </div>

             <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1"> 
                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Questao">

                        <Columns>

                           <asp:TemplateField HeaderText="Ano">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Ano") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Questão">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Questao") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Total Respostas">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Total_Resposta") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Quantidade Ignoradas">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Ignorado") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Quantidade Detratores">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Detrator") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Quantidade Neutros">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Neutro") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Quantidade Promotores">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Promotor") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>


                        </Columns>
                    </asp:GridView>
    
                </div>
            </div>
        </div>


        <div class="row">

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="divResultado">
                <div class="sessoes text-center">Resultados Por Curso</div>
            </div>

            <%--<div class="col-sm-12 col-md-6 offset-lg-1 col-lg-10 offset-lg-1 combo-periodos">   
                <asp:dropdownlist runat="server" CssClass="form-control" id="cmbPeriodo2" autopostback="true" onselectedindexchanged="cmbAno2_SelectedIndexChanged">
                    </asp:dropdownlist>
            </div>--%>

            <div class="col-sm-12 col-md-6 offset-lg-1 col-lg-10 offset-lg-1 combo-periodos">   
                <asp:dropdownlist runat="server" CssClass="form-control" id="cmbCurso" autopostback="true" onselectedindexchanged="cmbCurso_SelectedIndexChanged">
                    </asp:dropdownlist>
            </div>

            <%--<div class="col-sm-12 col-md-6 offset-lg-1 col-lg-10 offset-lg-1 combo-periodos">   
                <asp:dropdownlist runat="server" CssClass="form-control" id="cmbQuestao2" autopostback="true" onselectedindexchanged="cmbQuestao2_SelectedIndexChanged">
                    </asp:dropdownlist>
            </div>--%>




            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultados">
                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">

                        <Columns>

                           <asp:TemplateField HeaderText="Ano">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Ano") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Curso">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Curso") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Questão">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Questao") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Total Respostas">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Total_Resposta") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Quantidade Ignoradas">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Ignorado") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Quantidade Detratores">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Detrator") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Quantidade Neutros">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Neutro") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Quantidade Promotores">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("Qtd_Promotor") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>


                        </Columns>
                    </asp:GridView>
    
                </div>
            </div>
        </div>

    </div>



</asp:Content>
