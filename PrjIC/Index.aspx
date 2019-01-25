<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ProjetoIC.Index" %>

<!DOCTYPE html

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <!-- Normalize stylesheet-->
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <!-- Bootstrap stylesheet -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
        <!-- Comum stylesheet -->
        <link rel="stylesheet" type="text/css" href="css/comum.css" />
        <!-- Fontes stylesheet -->
        <link rel="stylesheet" type="text/css" href="css/fonts.css" />
        <!-- Questionario stylesheet -->
        <link rel="stylesheet" type="text/css" href="css/questionario.css" />
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

    <!-- NAVBAR - INICIO -->
    <nav class="navbar navbar-expand-md navbar-light navbar-custom">
        <!-- Brand -->
        <a class="navbar-brand" href="#">
            <img src="img/icons/icon_64x64.png" width="30" height="30" class="d-inline-block align-top" alt=""/>
            Avaliador
        </a>

        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <!-- Esquerda -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-question-circle"></i> Sobre</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-poll-h"></i> Resultados</a>
                </li>
            </ul>

            <!-- Direita -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-user"></i> Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"> <i class="fas fa-wrench"></i> Admin</a>
                </li>
            </ul>
        </div>

    </nav>

    <body>
        <form id="form1" runat="server">
            <!-- NAVBAR - FIM -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                        <div class="text-center">
                             <asp:Label ID="lbAno" runat="server" Text=""></asp:Label>
                        </div>

                        <div class="sessoes text-center"><i class="fas fa-user-graduate"></i> Perfil do pós-graduando
                            
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
                                        <option value="" selected="selected" disabled="disabled">Selecionar...</option>
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
                                <div class="titulo-painel text-left"><span class="badge">5</span>Quantas publicações em Periódicos? (Resultantes ou não da pesquisa)</div>
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
                        <div class="sessoes text-center">
                            <i class="fas fa-graduation-cap"></i> Avaliação da pós-graduação
                        </div>

                        <!-- 6-Pergunta-Inicio -->
                        <div class="panel center">
                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">6</span>Que nota você daria para as disciplinas de maneira geral?</div>
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
                                <div class="titulo-painel text-left"><span class="badge">7</span>Que disciplinas você recomendaria?</div>
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
                                <div class="titulo-painel text-left"><span class="badge">8</span>Que disciplinas você não recomendaria?</div>
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
                                <div class="titulo-painel text-left"><span class="badge">9</span> Como você avalia o atendimento de seu orientador?</div>
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">10</span> Como você avalia o atendimento do Coordenador do Programa de Pós-Graduação?
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">11</span> Como você avalia o acesso as informações no site da Pós-graduação e do Programa (formulários, resoluções, normas, critérios de bolsas, ...)?
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">12</span> Que nota você daria para o Programa de Pós-Graduação de maneira geral?
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">13</span>  Você recomendaria este Programa de Pós-Graduação?
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">14</span> Como você avalia o atendimento da Secretaria da PRPPG?
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
                                <div class="titulo-painel text-left"><span class="badge">15</span>O que você gostou no Programa de Pós-Graduação (PPG)?</div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <textarea runat="server" id="q15" placeholder="Escreva aqui o que gostou!" class="form-control" rows="5"></textarea>
                                </div>
                            </div>
                        </div>
                        <!-- 15-Pergunta-Fim -->

                        <!-- 16-Pergunta-Inicio -->
                        <div class="panel center">
                            <div class="panel-heading">
                                <div class="titulo-painel text-left"><span class="badge">16</span>O que você não gostou no Programa de Pós-Graduação (PPG)?</div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <textarea runat="server" id="q16" placeholder="Escreva aqui o que não gostou!" class="form-control" rows="5" ></textarea>
                                </div>
                            </div>
                        </div>

                        <!-- 16-Pergunta-Fim -->
                        <div class="sessoes text-center">
                            <i class="fas fa-university"></i> Avaliação da infraestrutura
                        </div>

                        <!-- 17-Pergunta-Inicio -->
                        <div class="panel center">
                            <div class="panel-heading">
                                <div class="titulo-painel text-left">
                                    <span class="badge">17</span>  Como você avalia as instalações dos ambientes de estudo (Grupos de Pesquisa)?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">18</span>  Como você avalia as instalações das salas de aula?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">19</span>  Como você avalia as instalações, disponibilidade e atendimento dos laboratórios da UNIFEI utilizados em sua dissertação ou tese?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">20</span>   Como você avalia o atendimento do Financeiro da PRPPG (bolsas e auxílios)?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">21</span>   Como você avalia o atendimento da Direção da Pró-Reitora (Pró-Reitor e Diretora de Pós-Graduação)?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">22</span>  Como você avalia o acesso e uso do Sistema SIGAA?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">23</span> Como você avalia as ações da Pró-Reitoria de maneira geral?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">24</span> Como você avalia o atendimento da Biblioteca (BIM)?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">25</span> Como você avalia o acervo da Biblioteca (BIM)?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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
                                <div class="titulo-painel text-left">
                                    <span class="badge">26</span> Como você avalia a disponibilidade e velocidades da internet da UNIFEI?
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <select class="form-control">
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

                        <div class="sessoes text-center"><i class="fas fa-brain"></i> Espaço criativo!</div>

                        <!-- 27-Pergunta-Inicio -->
                        <div class="panel center">
                            <div class="panel-heading">
                                <div class="titulo-painel text-left">
                                    <span class="badge">27</span>Caso queira apresentar comentários complementares as questões, utilize o espaço abaixo:
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-12">
                                    <textarea runat="server" id="q27" placeholder="Expresse-se aqui como quiser, se quiser!" class="form-control" rows="5" ></textarea>
                                </div>
                            </div>
                        </div>
                        <!-- 27-Pergunta-Fim -->

                        <!-- Botao submit-->
                        <asp:button runat="server" id="btnEnviar" type="submit" class="btn btn-block" Text="Enviar" OnClick="btEnviar_Click"/>
                        <%--<asp:Button runat="server" class="btn btn-block" Text="Enviar" id="btEnviar" OnClick="btEnviar_Click" />
                        <i class="btn far fa-paper-plane">asdfasdf</i>--%>
                    </div>
                </div>
            </div>


            <!-- Botao scroll top -->
            <a href="#0" class="cd-top js-cd-top"></a>
        </form>
    </body>

    <!-- Barra progress scroll -->
    <progress class="progress" id="progressbar" value="0" max="100"></progress>

    <!-- Footer -->
    <footer class="footer font-small pt-4">
        <!-- Copyright -->
        <div id="copyright-rodape" class="text-center">
            © 2019 Copyright:
            <a id="link-rodape" href="https://github.com/juninhoojl"> </i><i class="fab fa-github"></i></i> Juninhoojl</i></a>
        </div>
        <!-- Copyright -->
    </footer>

    <!-- Footer -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <!-- Botao topo -->
    <script src="js/comum.js"></script>
</html>
