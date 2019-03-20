<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Apresentacao.aspx.cs" Inherits="PrjIC.Apresentacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <!-- Questionario stylesheet -->
  <link rel = "stylesheet" type = "text/css" href = "css/sobre.css" />

        <div class="container-fluid">
            <div class="row">
                <div class="col-12 colorido">
                    <div class="text-center">
                        <img id="logo" src="img/icons/Logo.png" class="img-fluid" alt="logo">
                    </div>

                    <br>

                    <hr align="center">

                    <div class="texto-sobre text-center">
                        Sistema de Avaliação Institucional
                    </div>

                </div>
            </div>

            <div class="row">


                <div class="col-sm-12 col-md-12 col-lg-4 texto-colunas cinza">

                <div class="titulo-colunas text-center"><i class="fas fa-terminal"></i> Ponsis</div>
                    O Ponsis é um sistema baseado em WEB que auxilia a coleta e análise de opiniões, mais especificamente opiniões à respeito da qualidade de ensino e outros aspectos.
                </div>

                <div class="col-sm-12 col-md-12 col-lg-4 texto-colunas branco">
                    <div class="titulo-colunas text-center"><i class="fas fa-bullseye"></i> Objetivo</div>
                    O objetivo do Ponsis é apresentar resultados objetivos de acordo com opiniões dos discentes de pós-graduação. Facilitando a tomada de decisões!

                </div>

               <div class="col-sm-12 col-md-12 col-lg-4 texto-colunas cinza">

                <div class="titulo-colunas text-center"><i class="fas fa-calculator"></i> Método</div>
                    Com base na opinião dos discentes, é calculado no Net Promoter Score (NPS). Que tem como objetivo facilitar a análise de pontos fracos e fortes dos mesmos.

                </div>

            </div>

            <div class="row colorido">
                 <div class="col-12 text-center imagem-calculo">
                    <div class="titulo-utilizam text-center">
                        Quem utiliza o NPS?
                    </div>

                <div class="row utilizam-nps">
                <div class="col-sm-6 col-md-4 col-lg-2 img-logo">

                    <img src="img/logos/logo1b.png" class="img-fluid">

                </div>


                <div class="col-sm-6 col-md-4 col-lg-2 img-logo">

                    <img src="img/logos/logo4b.png" class="img-fluid">

                </div>
                <div class="col-sm-6 col-md-4 col-lg-2 img-logo">

                    <img src="img/logos/logo3b.png" class="img-fluid">

                </div>


                <div class="col-sm-6 col-md-4 col-lg-2 img-logo">

                    <img src="img/logos/logo2b.png" class="img-fluid">

                </div>

                <div class="col-sm-6 col-md-4 col-lg-2 img-logo">

                    <img src="img/logos/logo5b.png" class="img-fluid">

                </div>

                <div class="col-sm-6 col-md-4 col-lg-2 img-logo">

                    <img src="img/logos/logo6b.png" class="img-fluid">

                </div>

                </div>

            <div class="row painel-calculo">
                <div class="col-sm-12 col-md-12 offset-lg-1 col-lg-10 offset-lg-1">
                    <div class="calculo-nps text-center">
                        O Cálculo
                    </div>

                    <img src="img/indicadores/Calculo_NPS.png" class="img-fluid img-calculo">

                    <div class="calculo-nps text-center">
                        Resultados <i class="fas fa-arrow-down"></i>
                    </div>

                </div>

            </div>


            <div class="row">

                <div class="col-sm-6 col-md-3 col-lg-3">

                    <img src="img/indicadores/Nps_Otimo.png" class="img-fluid nps-indicadores">

                </div>

                <div class="col-sm-6 col-md-3 col-lg-3 claro">

                    <img src="/img/indicadores/Nps_Bom.png" class="img-fluid nps-indicadores">

                </div>
                            <div class="col-sm-6 col-md-3 col-lg-3">

                    <img src="/img/indicadores/Nps_Aceitavel.png" class="img-fluid nps-indicadores">

                </div>
                            <div class="col-sm-6 col-md-3 col-lg-3 claro">

                    <img src="/img/indicadores/Nps_Ruim.png" class="img-fluid nps-indicadores">

                </div>


                </div>
        </div>

                    </div>
        </div>

</asp:Content>