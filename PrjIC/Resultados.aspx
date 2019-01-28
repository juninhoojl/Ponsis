<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="PrjIC.Resultados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <!-- REsultados stylesheet -->
 <link rel = "stylesheet" type = "text/css" href="css/resultados.css"/>




<div class="container-fluid">
  <div class="row">
    <div class="col-sm-12 col-md-12 col-lg-12">
            <div class="sessoes text-center"><i class="fas fa-user-graduate"></i> Curso X</div>

<div class="table-responsive table-hover table-bordered table-striped">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">Questão</th>
      <th scope="col">2017</th>
      <th scope="col">2018</th>
      <th scope="col">2019</th>
      <th scope="col">2020</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Como você avalia o atendimento de seu orientador?</th>
      <td><i class="fas fa-gem icone-indicador icone-diamante"></i></td>
      <td><i class="fas fa-smile icone-indicador icone-feliz"></i></td>
      <td><i class="fas fa-meh icone-indicador icone-normal"></i></td>
      <td><i class="fas fa-frown icone-indicador icone-triste"></i></td>
    </tr>
    <tr>
      <th scope="row">Como você avalia o atendimento do Coordenador do Programa de Pós-Graduação?</th>
      <td><i class="fas fa-gem icone-indicador icone-diamante"></i></td>
      <td><i class="fas fa-smile icone-indicador icone-feliz"></i></td>
      <td><i class="fas fa-meh icone-indicador icone-normal"></i></td>
      <td><i class="fas fa-frown icone-indicador icone-triste"></i></td>
    </tr>
    <tr>
      <th scope="row">Que nota você daria para o Programa de Pós-Graduação de maneira geral?</th>
      <td><i class="fas fa-gem icone-indicador icone-diamante"></i></td>
      <td><i class="fas fa-smile icone-indicador icone-feliz"></i></td>
      <td><i class="fas fa-meh icone-indicador icone-normal"></i></td>
      <td><i class="fas fa-frown icone-indicador icone-triste"></i></td>
    </tr>
    <tr>
      <th scope="row">Você recomendaria este Programa de Pós-Graduação?</th>
      <td><i class="fas fa-gem icone-indicador icone-diamante"></i></td>
      <td><i class="fas fa-smile icone-indicador icone-feliz"></i></td>
      <td><i class="fas fa-meh icone-indicador icone-normal"></i></td>
      <td><i class="fas fa-frown icone-indicador icone-triste"></i></td>
    </tr>

    <tr>
      <th scope="row">Como você avalia as instalações dos ambientes de estudo (Grupos de Pesquisa)?</th>
      <td><i class="fas fa-gem icone-indicador icone-diamante"></i></td>
      <td><i class="fas fa-smile icone-indicador icone-feliz"></i></td>
      <td><i class="fas fa-meh icone-indicador icone-normal"></i></td>
      <td><i class="fas fa-frown icone-indicador icone-triste"></i></td>
    </tr>

          <tr>
      <th scope="row">Como você avalia as instalações das salas de aula?</th>
      <td><i class="fas fa-gem icone-indicador icone-diamante"></i></td>
      <td><i class="fas fa-smile icone-indicador icone-feliz"></i></td>
      <td><i class="fas fa-meh icone-indicador icone-normal"></i></td>
      <td><i class="fas fa-frown icone-indicador icone-triste"></i></td>
    </tr>

          <tr>
      <th scope="row">Como você avalia as instalações, disponibilidade e atendimento dos laboratórios da UNIFEI utilizados em sua dissertação ou tese?</th>
      <td><i class="fas fa-gem icone-indicador icone-diamante"></i></td>
      <td><i class="fas fa-smile icone-indicador icone-feliz"></i></td>
      <td><i class="fas fa-meh icone-indicador icone-normal"></i></td>
      <td><i class="fas fa-frown icone-indicador icone-triste"></i></td>
    </tr>
  </tbody>
</table>
    </div>
 



            <!-- Botao submit-->
            <button type="submit" class="btn btn-block"><div class="enviar-botao">Salvar Como PDF <i class="far fa-save"></i></div></button>
        </div>
    </div>
</div>

 <!-- Botao scroll top -->
  <a href="#0" class="cd-top js-cd-top"></a>

<!-- Botao topo -->
<script src="js/comum.js"></script> 

</asp:Content>
