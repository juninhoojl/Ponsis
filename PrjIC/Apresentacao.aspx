<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Apresentacao.aspx.cs" Inherits="PrjIC.Apresentacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="css/sobre.css" />
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="img/pics/img1.jpg" alt="Imagem 1">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/pics/img1.jpg" alt="Imagem 2">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/pics/img1.jpg" alt="Imagem 3">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="container-fluid">
        <div class="row">

            <div class="meio col-sm-12 col-md-12 col-lg-12">


                <div class="nomebloco text-center">Net Promoter Score</div>
                <br>
            </div>



            <div class="col-lg-3 col-md-6">
                <div class="nomediamante"> <i class="fas fa-gem diamante"></i> Excelência</div>
            </div>

            <div class="col-lg-3 col-md-6">

                <div class="nomefeliz"> <i class="fas fa-smile feliz"></i> Qualidade</div>

            </div>





            <div class="col-lg-3 col-md-6">

                <div class="nomenormal"> <i class="fas fa-meh normal"> </i> Ações de melhorias</div>

            </div>

            <div class="col-lg-3 col-md-6">

                <div class="nometriste"> <i class="fas fa-frown triste"></i> Ações prioritárias de melhoria</div>

            </div>







            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat.




            <div class="direita col-sm-12 col-md-6 col-lg-6">

                <img src="img/pics/graph.png" style="width: 100%;">

            </div>






            <div class="esquerda col-sm-12 col-md-6 col-lg-6">

                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.



            </div>

            <div class="maior col-sm-12 col-md-12 col-lg-12">

                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.



            </div>




        </div>
    </div>
</asp:Content>
