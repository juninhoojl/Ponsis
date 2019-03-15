<%@ Page Title="" Language="C#" MasterPageFile="/Site.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="PrjIC.Resultados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">

        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div class="panel center">
                    <div class="panel-heading">
                        <div class="titulo-painel text-center">
                            <i class="fas fa-filter"></i>Filtros e Opções
                        </div>
                    </div>

                    <div class="panel-body dicaselecao">
                        <div runat="server" id="painelDicaResultados">
                            <ul>
                                <li>Obs.: Para ver os resultados selecione o período
                                        e o curso nos filtros ⇊
                                </li>
                            </ul>
                        </div>

                        <div class="row">
                            <div class="col-12 text-center titulo-opcoes">
                                Filtros
                            </div>
                            <div class="col-sm-12 col-md-6 col-lg-6">

                                <asp:DropDownList runat="server" CssClass="form-control combo-filtro" ID="cmbPeriodo" AutoPostBack="true" OnSelectedIndexChanged="cmbPeriodo_SelectedIndexChanged"></asp:DropDownList>

                            </div>
                            <div class="col-sm-12 col-md-6 col-lg-6">
                                <asp:DropDownList runat="server" CssClass="form-control combo-filtro" ID="cmbCurso" AutoPostBack="true" OnSelectedIndexChanged="cmbCurso_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                        </div>

                        <div id="PanelOpcoes" runat="server">
                            <div class="col-12 text-center titulo-opcoes">
                                <a id="BotaoOpcoesVisu" href="#PainelOpcoesVisu" data-toggle="collapse">Mais Opções <i class="far fa-hand-point-left"></i></a>
                            </div>
                            <div id="PainelOpcoesVisu" class="collapse">
                                <div runat="server">
                                    <hr class="hr-opcoes">
                                    <div class="row">
                                        <div class="col-12 text-center titulo-opcoes">
                                            Visualização
                                        </div>
                                        <div class="col-sm-12 col-md-6 col-lg-6">
                                            <ul class="lista-opcoes">

                                                <li>
                                                    <label class="switch">
                                                        <asp:CheckBox ID="CheckBox1" runat="server" Checked="false" AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged"></asp:CheckBox>
                                                        <span class="slider round"></span>
                                                    </label>
                                                    <label>Coluna Total</label>
                                                </li>


                                                <li>
                                                    <label class="switch">
                                                        <asp:CheckBox ID="CheckBox2" runat="server" Checked="false" AutoPostBack="true" OnCheckedChanged="CheckBox2_CheckedChanged"></asp:CheckBox>
                                                        <span class="slider round"></span>
                                                    </label>
                                                    <label>Coluna Ignoradas</label>
                                                </li>
                                                <li>
                                                    <label class="switch">
                                                        <asp:CheckBox ID="CheckBox3" runat="server" Checked="false" AutoPostBack="true" OnCheckedChanged="CheckBox3_CheckedChanged"></asp:CheckBox>
                                                        <span class="slider round"></span>
                                                    </label>
                                                    <label>Coluna Detratores</label>
                                                </li>
                                                <li>
                                                    <label class="switch">
                                                        <asp:CheckBox ID="CheckBox4" runat="server" Checked="false" AutoPostBack="true" OnCheckedChanged="CheckBox4_CheckedChanged"></asp:CheckBox>
                                                        <span class="slider round"></span>
                                                    </label>
                                                    <label>Coluna Neutros</label>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-12 col-md-6 col-lg-6">
                                            <ul>
                                                <li>
                                                    <label class="switch">
                                                        <asp:CheckBox ID="CheckBox5" runat="server" Checked="false" AutoPostBack="true" OnCheckedChanged="CheckBox5_CheckedChanged"></asp:CheckBox>
                                                        <span class="slider round"></span>
                                                    </label>
                                                    <label>Coluna Promotores</label>
                                                </li>
                                                <li>
                                                    <label class="switch">
                                                        <asp:CheckBox ID="CheckBox6" runat="server" Checked="true" AutoPostBack="true" OnCheckedChanged="CheckBox6_CheckedChanged"></asp:CheckBox>
                                                        <span class="slider round"></span>
                                                    </label>
                                                    <label>Coluna Ícone</label>
                                                </li>

                                                <li>
                                                    <label class="switch">
                                                        <asp:CheckBox ID="CheckBox7" runat="server" Checked="true" AutoPostBack="true" OnCheckedChanged="CheckBox7_CheckedChanged"></asp:CheckBox>
                                                        <span class="slider round"></span>
                                                    </label>
                                                    <label>Coluna NPS</label>
                                                </li>


                                                <li>
                                                    <label class="switch">
                                                        <asp:CheckBox ID="CheckBox8" runat="server" Checked="false" AutoPostBack="true" OnCheckedChanged="CheckBox8_CheckedChanged"></asp:CheckBox>
                                                        <span class="slider round"></span>
                                                    </label>
                                                    <label>Informações Adicionais</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="row" runat="server" id="DivInformacoes">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div id="Div2" runat="server" class="sessoes text-center">Informações</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="painelSobreColeta">
                <div class="panel center">
                    <div class="panel-heading">
                        <div class="titulo-painel text-left">
                            <span class="badge">?</span>
                            Resumo Geral
                        </div>
                    </div>
                    <div class="panel-body">

                        <ul>
                            <li runat="server" id="liAvaliacao">Abriu em</li>
                            <li runat="server" id="liQtAlunos">Quantos alunos</li>
                            <li runat="server" id="liQtrepostas">Quantas respostas</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div runat="server" id="InformacoesAdicionais">

            <div class="row">

                <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                    <div id="TituloGridTempo" runat="server" class="sessoes text-center">Tempo na Pós-Graduação</div>
                </div>

                <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridTempo">
                    <div class="table-responsive">
                        <asp:GridView CssClass="gridview" ID="dgvvw_Tempo" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">


                            <Columns>
                                <asp:TemplateField HeaderText="Questão">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Questao") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Até 12 meses">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("T0") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="13 a 24">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("T1") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="25 a 36">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("T2") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="37 a 45">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("T3") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Mais que 48">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("T4") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>



                            </Columns>

                        </asp:GridView>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                    <div id="TituloGridEgresso" runat="server" class="sessoes text-center">Egressão</div>
                </div>

                <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridEgresso">
                    <div class="table-responsive">
                        <asp:GridView CssClass="gridview" ID="dgvvw_Egresso" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">
                            <Columns>
                                <asp:TemplateField HeaderText="Questão">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Questao") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Sim">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Sim") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Não">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Nao") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>


                            </Columns>

                        </asp:GridView>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                    <div id="TituloGridPublicacoes" runat="server" class="sessoes text-center">Publicações</div>
                </div>

                <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridPublicacoes">
                    <div class="table-responsive">
                        <asp:GridView CssClass="gridview" ID="dgvvw_Publicacoes" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">
                            <Columns>
                                <asp:TemplateField HeaderText="Questão">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Questao") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Total">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Total") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="0">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Q0") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="1 a 4">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Q1") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="5 a 8">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Q2") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="9 a 12">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Q3") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Mais que 12">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Q4") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>


                            </Columns>

                        </asp:GridView>
                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div id="TituloGridDP" runat="server" class="sessoes text-center">Disciplinas</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultadosDP">
                <div class="table-responsive">
                    <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_DP" runat="server" AutoGenerateColumns="false"
                        ShowFooter="false" DataKeyNames="Ano">
                        <Columns>
                            <asp:TemplateField HeaderText="Questão">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Questao") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Total">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Total_Resposta") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ignoradas">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Ignorado") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Detratores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Detrator") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Neutros">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Neutro") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Promotores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Promotor") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ícone">
                                <ItemTemplate>
                                    <img src="/img/indicadores/Triste.png" width="40" height="40" class="d-inline-block align-top" alt="">
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="NPS">
                                <ItemTemplate>
                                    19.05
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
                                    <asp:Label Text='<%# Eval("Questao") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Total">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Total_Resposta") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ignoradas">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Ignorado") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Detratores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Detrator") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Neutros">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Neutro") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Promotores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Promotor") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ícone">
                                <ItemTemplate>
                                    <asp:Image runat="server" ID="XYZ" src='<%# Eval("Imagem") %>' width="40" height="40" class="d-inline-block align-top" alt=""/>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="NPS">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("NPS") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>


                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div id="TituloGridPP" runat="server" class="sessoes text-center">Pró Reitoria de Pós-graduação</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultadosPP">
                <div class="table-responsive">
                    <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_PP" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">
                        <Columns>
                            <asp:TemplateField HeaderText="Questão">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Questao") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Total">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Total_Resposta") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ignoradas">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Ignorado") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Detratores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Detrator") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Neutros">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Neutro") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Promotores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Promotor") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ícone">
                                <ItemTemplate>
                                    <img src="/img/indicadores/Neutro.png" width="40" height="40" class="d-inline-block align-top" alt="">
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="NPS">
                                <ItemTemplate>
                                    19.05
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
                                    <asp:Label Text='<%# Eval("Questao") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Total">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Total_Resposta") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ignoradas">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Ignorado") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Detratores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Detrator") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Neutros">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Neutro") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Promotores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Promotor") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ícone">
                                <ItemTemplate>
                                    <img src="/img/indicadores/Feliz.png" width="40" height="40" class="d-inline-block align-top" alt="">
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="NPS">
                                <ItemTemplate>
                                    19.05
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>

                </div>
            </div>
        </div>

        <div class="row">

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div id="TituloGridBI" runat="server" class="sessoes text-center">Biblioteca</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="gridResultadosBI">
                <div class="table-responsive">

                    <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_BI" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="Ano">

                        <Columns>


                            <asp:TemplateField HeaderText="Questão">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Questao") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Total">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Total_Resposta") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ignoradas">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Ignorado") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Detratores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Detrator") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Neutros">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Neutro") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Promotores">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Qtd_Promotor") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Ícone">
                                <ItemTemplate>
                                    <img src="/img/indicadores/Feliz.png" width="40" height="40" class="d-inline-block align-top" alt="">
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="NPS">
                                <ItemTemplate>
                                    19.05
                                </ItemTemplate>
                            </asp:TemplateField>


                        </Columns>
                    </asp:GridView>

                </div>
            </div>
        </div>

        <div class="row" runat="server" id="DivAbertas">

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                <div id="Div3" runat="server" class="sessoes text-center titulo-abertas">Abertas</div>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1 combo-periodos">
                <asp:DropDownList runat="server" CssClass="form-control" ID="cmbQuestao" AutoPostBack="true" OnSelectedIndexChanged="cmbQuestao_SelectedIndexChanged">
                </asp:DropDownList>
            </div>

            <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1" runat="server" id="Div4">
                <div class="table-responsive">
                    <asp:GridView CssClass="gridview" ID="dgvvw_Resultado_Ano_Curso_Aberto" runat="server" AutoGenerateColumns="false" ShowFooter="false" DataKeyNames="id_Questao">
                        <Columns>
                            <asp:TemplateField HeaderText="Respostas Abertas">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("tx_Resposta") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
