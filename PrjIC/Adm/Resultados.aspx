<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="PrjIC.Adm.Resultados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container-fluid">



        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1"  runat="server" id="painelDicaResultados">   
                <div class="panel center dicaselecao">
                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">?</span>
                                   Como funciona a visualização dos resultados?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                     Para ver os resultados:
                                    <ol>
                                        <li>Selecione no combo box abaixo o período que deseja ver os resultados.</li>
                                        <li>Selecione no outro combo box que surgirá o curso para as outras questões!</li>
                                    </ol>
                                    Obs.: O "Resultado Geral" não é separado por curso por se tratarem de quesitos comuns à todos!
                                </div>
                            </div>
                </div>

            </div>


            <div class="col-sm-12 col-md-6 offset-lg-1 col-lg-5 combo-periodos">   
                <asp:dropdownlist runat="server" CssClass="form-control" id="cmbPeriodo" autopostback="true" onselectedindexchanged="cmbAno_SelectedIndexChanged">
                    </asp:dropdownlist>
            </div>

            <div class="col-sm-12 col-md-6 col-lg-5 combo-periodos">   
                <asp:dropdownlist runat="server" CssClass="form-control" id="cmbCurso" autopostback="true" onselectedindexchanged="cmbCurso_SelectedIndexChanged">
                    </asp:dropdownlist>
            </div>

        </div>

        <div class="row">

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div class="sessoes text-center">Disciplinas</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="Div4">
                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_DP" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">

                        <Columns>



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

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div class="sessoes text-center">Organização de Apoio do PPG</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultadosPPG">
                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">

                        <Columns>



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

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div class="sessoes text-center">Pró Reitoria de Pós-graduação</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="Div1">
                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_PP" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">

                        <Columns>



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

             <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div class="sessoes text-center">Sistemas de Informação</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="Div2">
                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_SI" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">

                        <Columns>



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

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div class="sessoes text-center">Biblioteca</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="Div3">
                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_BI" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">

                        <Columns>



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
