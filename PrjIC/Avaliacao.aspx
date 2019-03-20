<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Avaliacao.aspx.cs" Inherits="ProjetoIC.Avaliacao" %>

<!DOCTYPE html>
<html lang="pt-br">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <!-- Normalize stylesheet-->
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <!-- Bootstrap stylesheet -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
        <!-- Fontes stylesheet -->
        <link rel="stylesheet" type="text/css" href="css/fonts.css" />
        <!-- Questionario stylesheet -->
        <link rel="stylesheet" type="text/css" href="css/avaliacao.css" />
        <!-- Renderiza IE = Edge -->
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>
        <!-- Para proporcao tamanhos de tela -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <!-- Tipo de caractere -->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <!-- Icons -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"/>
        <!-- Icones para favoritos e abas android e geral-->
        <link rel="icon" href="img/icons/icon_16x16.png" sizes="16x16" type="image/png"/>
        <link rel="icon" href="img/icons/icon_32x32.png" sizes="32x32" type="image/png"/>
        <link rel="icon" href="img/icons/icon_64x64.png" sizes="64x64" type="image/png"/>
        <link rel="icon" href="img/icons/icon_128x128.png" sizes="128x128" type="image/png"/>

        <!-- Icones para favoritos e abas iPhone e home screen -->
        <link rel="apple-touch-icon-precomposed" sizes="128x128" href="img/icons/icon_128x128.png"/>
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/icons/icon_72x72.png"/>
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/icons/icon_114x114.png"/>

        <!-- Titulo da pagina -->
        <title>Avaliador</title>
    </head>

    <body>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">
                        <asp:Label ID="lbAno2" runat="server" Text=""></asp:Label>  

                    </h4>

                </div>
                <div class="modal-body">
                   
                        <ul>
                            <li><asp:Label ID="lbDataInicio" runat="server" Text=""></asp:Label></li>
                            <li><asp:Label ID="lbDataFim" runat="server" Text=""></asp:Label></li>
                            <li>Somente as questões abertas são opcionais!</li>
                            <li>A avaliação é totalmente anônima! (Responda o que realmente pensa)</li>
                            <li>Após responder, você será redirecionado para a página onde será possível ver resultados anteriores (Somente fechadas)!</li>
                            
                            <li>Obs.: O login só é necessário para o administrador do sistema e coordenadores do programa, os quais poderam ver os resultados abertos!</li>
                        </ul>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-block botao-fechar-modal" data-dismiss="modal">Ok, entendi!</button>
                </div>
            </div>
        </div>
        </div>

        <form id="form1" runat="server">
            
        <div class="container-fluid">
            <div class="row">
              <div class="faixa-ano col-sm-12 col-md-12 col-lg-12"> 
                  <div class="text-center">
                            <i data-toggle="modal" data-target="#myModal" class="fas fa-question-circle btnmodal"/></i>
                            <asp:Label ID="lbAno" runat="server" Text=""></asp:Label> 
                            
                  </div>
                      
              </div>
            </div>

                <div class="row">
                    <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">

                        <div class="titulo-secao text-center"><i class="fas fa-user-graduate"></i> Perfil do pós-graduando
                            
                        </div>

                        <!-- 1-Pergunta-Inicio -->
                        <div class="panel center">
                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">1</span><asp:Label ID="lbq1" runat="server" Text="Programa de pós-graduação"></asp:Label></div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q1" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
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
                                </div>
                            </div>
                        </div>
                        <!-- 1-Pergunta-Fim -->

                        <!-- 2-Pergunta-Inicio -->
                        <div class="panel center">
                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">2</span>
                                    <asp:Label ID="lbq2" runat="server" Text="Você é egresso da UNIFEI? (mestrado ou doutorado)"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q2" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="1">Sim</option>
                                        <option value="2">Não</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 2-Pergunta-Fim -->

                        <!-- 3-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">3</span>
                                    <asp:Label ID="lbq3" runat="server" Text="A quanto tempo que cursa o Programa de Pós-Graduação?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q3" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecione o Curso!</option>
                                        <option value="1">Até 12 meses</option>
                                        <option value="2">13 a 24 meses</option>
                                        <option value="2">25 a 36 meses</option>
                                        <option value="2">37 a 48 meses</option>
                                        <option value="2">Acima de 48 meses</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 3-Pergunta-Fim -->

                        <!-- 4-Pergunta-Inicio -->
                        <div class="panel center">

                           <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">4</span>
                                    <asp:Label ID="lbq4" runat="server" Text="Quantas publicações em Congressos? (Resultantes ou não da pesquisa)"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q4" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="0">Nenhuma</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">Mais de 15</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 4-Pergunta-Fim -->

                        <!-- 5-Pergunta-Inicio -->
                        <div class="panel center">

                           <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">5</span>
                                    <asp:Label ID="lbq5" runat="server" Text="Quantas publicações em Periódicos? (Resultantes ou não da pesquisa)"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q5" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="0">Nenhuma</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">Mais de 15</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <!-- 5-Pergunta-Fim -->
                        <div class="titulo-secao text-center">
                            <i class="fas fa-graduation-cap"></i> Avaliação da pós-graduação
                        </div>

                        <!-- 6-Pergunta-Inicio -->
                        <div class="panel center">
                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">6</span>
                                    <asp:Label ID="lbq6" runat="server" Text="Que nota você daria para as disciplinas de maneira geral?"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q6" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="0">0 - Péssimas</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 6-Pergunta-Fim -->

                        <!-- 7-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">7</span>
                                    <asp:Label ID="lbq7" runat="server" Text="Que disciplinas você recomendaria?"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <asp:TextBox runat="server"  id="q7" placeholder="Escreva aqui quais recomendaria!" class="form-control" TextMode="MultiLine" Rows="5" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!-- 7-Pergunta-Fim -->

                        <!-- 8-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">8</span>
                                    <asp:Label ID="lbq8" runat="server" Text="Que disciplinas você não recomendaria?"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <asp:TextBox runat="server"  id="q8" placeholder="Escreva aqui quais não recomendaria!" class="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!-- 8-Pergunta-Fim -->

                        <!-- 9-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">9</span>
                                    <asp:Label ID="lbq9" runat="server" Text="Como você avalia o atendimento de seu orientador?"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q9" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 9-Pergunta-Fim -->
                        
                        <!-- 10-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">10</span>
                                    <asp:Label ID="lbq10" runat="server" Text="Como você avalia o atendimento do Coordenador do Programa de Pós-Graduação?"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server" id="q10" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 10-Pergunta-Fim -->

                        <!-- 11-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">11</span>
                                    <asp:Label ID="lbq11" runat="server" Text="Como você avalia o acesso as informações no site da Pós-graduação e do Programa (formulários, resoluções, normas, critérios de bolsas, ...)?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q11" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 11-Pergunta-Fim -->

                        <!-- 12-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">12</span>
                                    <asp:Label ID="lbq12" runat="server" Text="Que nota você daria para o Programa de Pós-Graduação de maneira geral?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q12" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 12-Pergunta-Fim -->

                        <!-- 13-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">13</span>
                                    <asp:Label ID="lbq13" runat="server" Text="Você recomendaria este Programa de Pós-Graduação?"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server" id="q13" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="0">0 - Definitivamente não!</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Certamente sim!</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 13-Pergunta-Fim -->

                        <!-- 14-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">14</span>
                                    <asp:Label ID="lbq14" runat="server" Text="Como você avalia o atendimento da Secretaria da PRPPG?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server" id="q14" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeito</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 14-Pergunta-Fim -->

                        <!-- 15-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">15</span>
                                    <asp:Label ID="lbq15" runat="server" Text="O que você gostou no Programa de Pós-Graduação (PPG)?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <asp:TextBox runat="server"  id="q15" placeholder="Escreva aqui o que gostou!" class="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                </div>
                            </div>


                        </div>
                        <!-- 15-Pergunta-Fim -->

                        <!-- 16-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">16</span>
                                    <asp:Label ID="lbq16" runat="server" Text="O que você não gostou no Programa de Pós-Graduação (PPG)?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <asp:TextBox runat="server"  id="q16" placeholder="Escreva aqui o que não gostou!" class="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <!-- 16-Pergunta-Fim -->
                        <div class="titulo-secao text-center">
                            <i class="fas fa-university"></i> Avaliação da infraestrutura
                        </div>

                        <!-- 17-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">17</span>
                                    <asp:Label ID="lbq17" runat="server" Text="Como você avalia as instalações dos ambientes de estudo (Grupos de Pesquisa)?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q17" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimas</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 17-Pergunta-Fim -->

                        <!-- 18-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">18</span>
                                    <asp:Label ID="lbq18" runat="server" Text="Como você avalia as instalações das salas de aula?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q18" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimas</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 18-Pergunta-Fim -->

                        <!-- 19-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">19</span>
                                    <asp:Label ID="lbq19" runat="server" Text="Como você avalia as instalações, disponibilidade e atendimento dos laboratórios da UNIFEI utilizados em sua dissertação ou tese?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q19" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimas</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 19-Pergunta-Fim -->

                        <!-- 20-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">20</span>
                                    <asp:Label ID="lbq20" runat="server" Text="Como você avalia o atendimento do Financeiro da PRPPG (bolsas e auxílios)?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q20" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeito</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 20-Pergunta-Fim -->

                        <!-- 21-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">21</span>
                                    <asp:Label ID="lbq21" runat="server" Text="Como você avalia o atendimento da Direção da Pró-Reitora (Pró-Reitor e Diretora de Pós-Graduação)?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q21" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeito</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 21-Pergunta-Fim -->

                        <!-- 22-Pergunta-Inicio -->
                        <div class="panel center">
                            
                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">22</span>
                                    <asp:Label ID="lbq22" runat="server" Text="Como você avalia o acesso e uso do Sistema SIGAA?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q22" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeito</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 22-Pergunta-Fim -->

                        <!-- 23-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">23</span>
                                    <asp:Label ID="lbq23" runat="server" Text="Como você avalia as ações da Pró-Reitoria de maneira geral?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q23" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimas</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 23-Pergunta-Fim -->

                        <!-- 24-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">24</span>
                                    <asp:Label ID="lbq24" runat="server" Text="Como você avalia o atendimento da Biblioteca (BIM)?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q24" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeito</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 24-Pergunta-Fim -->

                        <!-- 25-Pergunta-Inicio -->
                        <div class="panel center">
       
                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">25</span>
                                    <asp:Label ID="lbq25" runat="server" Text="Como você avalia o acervo da Biblioteca (BIM)?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q25" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimo</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeito</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 25-Pergunta-Fim -->

                        <!-- 26-Pergunta-Inicio -->
                        <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">26</span>
                                    <asp:Label ID="lbq26" runat="server" Text="Como você avalia a disponibilidade e velocidades da internet da UNIFEI?"></asp:Label>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="col-12">
                                    <select runat="server"  id="q26" class="form-control">
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
                                        <option value="-1">Não posso avaliar!</option>
                                        <option value="0">0 - Péssimas</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10 - Perfeitas</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- 26-Pergunta-Fim -->

                        <div class="titulo-secao text-center"><i class="fas fa-brain"></i> Espaço criativo!</div>

                        <!-- 27-Pergunta-Inicio -->

                       <div class="panel center">

                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">27</span>
                                    <asp:Label ID="lbq27" runat="server" Text="Caso queira apresentar comentários complementares as questões, utilize o espaço abaixo:"></asp:Label>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <asp:TextBox runat="server"  id="q27" placeholder="Expresse-se aqui como quiser, se quiser!" class="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!-- 27-Pergunta-Fim -->

                        <!-- Botao submit-->
                        <asp:button runat="server" id="btnEnviar" type="submit" class="btn btn-block" Text="Enviar" OnClick="btEnviar_Click"/>
                    
                    </div>
                </div>
            </div>


            <!-- Botao scroll top -->
            <a href="#0" class="cd-top js-cd-top"></a>
        </form>
    </body>

 <!-- Footer -->
                  <footer class="footer font-small pt-4">
                      <div id="copyright-rodape" class="text-center">Copyright © 2018-<%: DateTime.Now.Year %>
                        <a id="link-rodape" href="https://github.com/juninhoojl"> </i><i class="fab fa-github"></i></i> Juninhoojl</i></a>
                      </div>
                  </footer>
                  <!-- Footer -->

    <!-- Botao topo -->
    <script src="js/comum.js"></script>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>
