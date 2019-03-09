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
                                <li>Selecione no combo box o período que deseja ver!</li>
                                <li>E Selecione no outro combo box o curso que deseja ver!</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div id="Div1" runat="server"  class="sessoes text-center">Filtros</div>
            </div>

            <div class="col-sm-12 col-md-6 offset-lg-1 col-lg-5 combo-periodos">   
                <asp:dropdownlist runat="server" CssClass="form-control" id="cmbPeriodo" autopostback="true" onselectedindexchanged="cmbPeriodo_SelectedIndexChanged">
                    </asp:dropdownlist>
            </div>

            <div class="col-sm-12 col-md-6 col-lg-5 combo-periodos">   
                <asp:dropdownlist runat="server" CssClass="form-control" id="cmbCurso" autopostback="true" onselectedindexchanged="cmbCurso_SelectedIndexChanged">
                    </asp:dropdownlist>
            </div>
        </div>

        <div class="row" runat="server" id="DivInformacoes">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div id="Div2" runat="server"  class="sessoes text-center">Informações</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1"  runat="server" id="painelSobreColeta">
                <div class="panel center dicaselecao">
                    <div class="panel-heading">
                        <div class="titulo-painel text-left"><span class="badge">?</span>
                            Resumo Geral
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="col-12">
                                Números:
                            <ol>
                                <li runat="server" id="liAvaliacao">Abriu em</li>
                                <li runat="server" id="liQtAlunos">Quantos alunos</li>
                                <li runat="server" id="liQtrepostas">Quantas respostas</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div id="TituloGridDP" runat="server"  class="sessoes text-center">Disciplinas</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultadosDP">
                <div class="table-responsive">
                    <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_DP" runat="server" AutoGenerateColumns="false" 
                                      ShowFooter="false" DataKeyNames="Ano">
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
                <div id="TituloGridOA" runat="server" class="sessoes text-center">Organização de Apoio do PPG</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultadosOA">
                <div class="table-responsive">
                    <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_OA" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">
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
                <div id="TituloGridPP" runat="server"  class="sessoes text-center">Pró Reitoria de Pós-graduação</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultadosPP">
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
                <div id="TituloGridSI" runat="server" class="sessoes text-center">Sistemas de Informação</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultadosSI">
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
                <div id="TituloGridBI" runat="server"  class="sessoes text-center">Biblioteca</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultadosBI">
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



        <div class="row" runat="server" id="DivAbertas">

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div id="Div3" runat="server"  class="sessoes text-center">Abertas</div>
            </div>

             <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1 combo-periodos">   
                <asp:dropdownlist runat="server" CssClass="form-control" id="cmbQuestao" autopostback="true" onselectedindexchanged="cmbQuestao_SelectedIndexChanged">
                    </asp:dropdownlist>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="Div4">
                <div class="table-responsive">

                        <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_Aberto" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="id_Questao">

                        <Columns>


                           <asp:TemplateField HeaderText="Respostas Abertas">
                                <ItemTemplate>
                                    <asp:label Text='<%# Eval("tx_Resposta") %>' runat="server"/>
                                </ItemTemplate>
                           </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
