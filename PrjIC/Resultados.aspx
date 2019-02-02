<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="PrjIC.Resultados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!-- Resultados stylesheet -->
<link rel = "stylesheet" type = "text/css" href="css/resultados.css"/>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">

            <div class="sessoes-tabela text-center">Curso X</div>

            <!-- Questoes Fechadas por curso -->
            <div class="Fechadas-Por-Curso">
                <div class="sessoes-tabela text-center">Questões Fechadas</div>
                <div class="tabela-externa table-responsive table-hover table-bordered table-striped">
                <table class="table">

                    <thead>
                    <tr align="center">
                      <th scope="col">Questão</th>
                      <th scope="col">2017 <br> (100/110 <i class="fas fa-user-graduate">)</th>
                      <th scope="col">2018 <br> (100/110 <i class="fas fa-user-graduate">)</th>
                      <th scope="col">2019 <br> (100/110 <i class="fas fa-user-graduate">)</th>
                      <th scope="col">2020 <br> (100/110 <i class="fas fa-user-graduate">)</th>
                    </tr>
                  </thead>

                    <tbody>

                    <tr>
                      <th class="questao-tabela" scope="row">Que nota você daria para as disciplinas de maneira geral?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Como você avalia o atendimento de seu orientador?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Como você avalia o atendimento do Coordenador do Programa de Pós-Graduação?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Que nota você daria para o Programa de Pós-Graduação de maneira geral?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Você recomendaria este Programa de Pós-Graduação?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Como você avalia as instalações dos ambientes de estudo (Grupos de Pesquisa)?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Como você avalia as instalações das salas de aula?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Como você avalia as instalações, disponibilidade e atendimento dos laboratórios da UNIFEI utilizados em sua dissertação ou tese?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>
    
                    <tr>
                      <th class="questao-tabela" scope="row">Como você avalia o atendimento da Secretaria da PRPPG?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Como você avalia o atendimento do Financeiro da PRPPG (bolsas e auxílios)?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Como você avalia o atendimento da Direção da Pró-Reitora (Pró-Reitor e Diretora de Pós-Graduação)?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                    <tr>
                      <th class="questao-tabela" scope="row">Como você avalia as ações da Pró-Reitoria de maneira geral?</th>
                      <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                      <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                    </tr>

                  </tbody>

                </table>
            </div>
            </div>

            <!-- Questoes Abertas por curso -->
            <div class="Abertas-Por-Curso">
                <div class="sessoes-tabela text-center">Questões Abertas</div>
                <div class="tabela-externa table-responsive table-hover table-bordered table-striped">
                <table class="table">

                    <thead>
                        <tr align="center">
                            <th scope="col">2018</th>
                        </tr>
                    </thead>

                    <tbody>

                        <tr align="center">
                          <th scope="col">Que disciplinas você recomendaria?  <br /> (3/110 <i class="fas fa-user-graduate">) </th>
                        </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>   
                      
                        <tr align="center">
                          <th scope="col">Que disciplinas você não recomendaria?  <br /> (3/110 <i class="fas fa-user-graduate">) </th>
                        </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>   

                        <tr align="center">
                          <th scope="col">O que você gostou no Programa de Pós-Graduação (PPG)?  <br /> (3/110 <i class="fas fa-user-graduate">) </th>
                        </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>   

                        <tr align="center">
                          <th scope="col">O que você não gostou no Programa de Pós-Graduação (PPG)?  <br /> (3/110 <i class="fas fa-user-graduate">) </th>
                        </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>   

                        <tr align="center">
                          <th scope="col">Caso queira apresentar comentários complementares as questões, utilize o espaço abaixo:  <br /> (3/110 <i class="fas fa-user-graduate">) </th>
                        </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>

                            <tr>
                              <td class="questao-tabela" scope="row">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod!</td>
                            </tr>   
                      
                                  


                        </tbody>

                    </table>
            </div>
            </div>

            <!-- Questoes Que independem do curso (Colocar em outra pagina -->
            <div class="Fechadas-Todos-Cursos">
                <div class="sessoes-tabela text-center">Questões Comuns</div>
                <div class="tabela-externa table-responsive table-hover table-bordered table-striped">
                    <table class="table">

                        <thead>
                        <tr align="center">
                          <th scope="col">Questão</th>
                          <th scope="col">2017 <br> (100/110 <i class="fas fa-user-graduate">)</th>
                          <th scope="col">2018 <br> (100/110 <i class="fas fa-user-graduate">)</th>
                          <th scope="col">2019 <br> (100/110 <i class="fas fa-user-graduate">)</th>
                          <th scope="col">2020 <br> (100/110 <i class="fas fa-user-graduate">)</th>
                        </tr>
                      </thead>

                        <tbody>
                            <tr>
                              <th class="questao-tabela" scope="row">Como você avalia o atendimento da Biblioteca (BIM)?</th>
                              <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                            </tr>

                            <tr>
                              <th class="questao-tabela" scope="row">Como você avalia o acervo da Biblioteca (BIM)?</th>
                              <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                            </tr>

                            <tr>
                              <th class="questao-tabela" scope="row">Como você avalia o acesso as informações no site da Pós-graduação e do Programa (formulários, resoluções, normas, critérios de bolsas, ...)?</th>
                              <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                            </tr>

                            <tr>
                              <th class="questao-tabela" scope="row">Como você avalia o acesso e uso do Sistema SIGAA?</th>
                              <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                            </tr>

                            <tr>
                              <th class="questao-tabela" scope="row">Como você avalia a disponibilidade e velocidades da internet da UNIFEI?</th>
                              <td align="center">NPS = 90 <br> <i class="fas fa-gem icone-indicador icone-diamante"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 70 <br><i class="fas fa-smile icone-indicador icone-feliz"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 50 <br><i class="fas fa-meh icone-indicador icone-normal"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                              <td align="center">NPS = 30 <br><i class="fas fa-frown icone-indicador icone-triste"></i><br>(100 <i class="fas fa-user-graduate">)</td>
                            </tr>

                        </tbody>

                    </table>
                </div>
            </div>

        </div>
    </div>
</div>


</asp:Content>
