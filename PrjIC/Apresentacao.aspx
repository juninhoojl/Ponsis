<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Apresentacao.aspx.cs" Inherits="PrjIC.Apresentacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <!-- Questionario stylesheet -->
  <link rel = "stylesheet" type = "text/css" href = "css/sobre.css" />

  <div class="container-fluid">
    <div class="row">

        <div class="colorido col-sm-12 col-md-12 col-lg-12">
            <div class="titulo-bloco text-center">Net Promoter Score</div>
        </div>

        <div class="transparente texto-exp col-lg-8 col-md-6
            
            
            
            
            
            
            col-sm-12">

             <div class="titulo-parte text-center">Teoria</div>
             <br />
           A avaliação é feita com base na teoria do Net Promoter Score (REICHHELD, 2006), amplamente utilizada na avaliação da satisfação e lealdade do cliente. Baseia-se em uma escala inteira de 0 (zero) a 10 (dez), onde a nota dos clientes os classifica em três grupos: 
                <br />
         
                 
                         <span class="grupos">
                            Notas de 0 a 06 – Clientes Detratores:
                         </span>
                     São aqueles que indicam que sua experiência em relação aos serviços foi ruim. Criticam-na publicamente e jamais voltariam a utilizar o serviço, exceto em situações extremas, como no caso de não haver qualquer outra opção. 
             <br />
             <span class="grupos">
                            Notas de 07 e 08 – Clientes Neutros ou passivos:
                         </span>
                  
            
                      Utilizam os serviços realmente necessários. Não são leais nem entusiastas. Pode indicar os serviços, mas com ressalvas. Caso tenha uma oportunidade melhor ele vai optar pela mudança. 
           <br />
                   <span class="grupos">
                            Notas de 09 e 10 – Clientes Promotores: 
                         </span>
                     Estão extremamente felizes com os serviços. São leais, ajudam a organização oferecendo sugestões espontâneas, são entusiasmados e recomendam a organização para amigos e familiares, estão satisfeitos. São decisivos para sobrevivência e crescimento da organização. 
            <br />


         </div>

        <div class="transparente texto-exp col-lg-4 col-md-6 col-sm-12">
                <div class="titulo-parte text-center">Cálculo</div>
                <br/>
                NPS = % CLIENTES PROMOTORES – % CLIENTES DETRADORES
                <br/>
                <div class="titulo-parte text-center">Resultados</div>
                <table style="width:100%">
                  <tr>
                    <td><i class="fas fa-gem icone-indicador icone-diamante"></i></td> 
                    <td class="intervalos"> 75 ≤ NPS </td>
                    <td>Excelência</td>
                  </tr>

                  <tr>
                    <td><i class="fas fa-smile icone-indicador icone-feliz"></i></td> 
                    <td class="intervalos"> 50 ≤ NPS < 75 </td>
                    <td>Qualidade</td>
                  </tr>

                  <tr>
                    <td><i class="fas fa-meh icone-indicador icone-normal"></i></td> 
                    <td class="intervalos"> 25 ≤ NPS < 50 </td>
                    <td>Ações de Melhoria</td>
                  </tr>

                  <tr>
                    <td><i class="fas fa-frown icone-indicador icone-triste"></i></td> 
                    <td class="intervalos"> 25 > NPS </td>
                    <td>Ações Prioritárias de Melhoria</td>
                  </tr>

                </table>
          </div>
     </div>
  </div>


   

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
  
</asp:Content>
