<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>IOT Station</title>
    <link rel="shortcut icon" href="images/logo.png">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500&amp;display=swap"

      rel="stylesheet">
  </head>
  <body class="fondo">
    <header> <a class="logo" href="https://sapalomera.cat"><img src="images/logo.png" alt="logo" style="width: 166px; height: 63px;"></a>
      <nav>
        <ul class="nav__links">
          <li><a href="index.php">Home</a></li>
          <li><a href="temperatura.php">TEMPERATURA</a></li>
        </ul>
      </nav>
      <a class="cta" href="humitat.html">Humitat</a>
      <p class="menu cta">Menu</p>

    </header>
<div class="section">
  <h2 class="titulante">Benvinguts a la estació Meteorològica De SAPA</h2>
</div>
  <div class="space">

  </div>
  <div class="divizquierda">
    <h4>OBJECTIUS:</h4>
    
    <p>L’objectiu del projecte és fer que aquests components ens mesurin la temperatura i humitat, que enviïn aquests valors a un servidor de base de dades, que aquests valors es puguin consultar mitjançant una pàgina WEB i finalment, segons unes determinades condicions de temperatura, ens activin un ventilador.</p>
    <br>

    <section>
      <h1>De quina data vols saber la humitat?<br/></h1>
      <form method="post" action="humitat_r.php">
          <p>
              <label for="Data">Selecciona una data: </label>
              <input type="date" name="Data" placeholder="Selecciona la data">
          </p> <br>                       
          <p>
              <input class="button2" type="reset" name="Limpio" value="Neteja">
              <input class="button2" type="submit" name="Enviar" value="Consulta">
          </p>
      </form>
      <br>
      <?php
                    global $DBH;
                    function connexio()
                    {
                    global $DBH;
                    $conn = require('connexio.php');
                    }
                    #Connectem a la base de dades amb l'arxiu.
                    connexio();
                    # Fem el prepare de la select
                    $stmt = $DBH->prepare('SELECT MIN(humitat) as min_humitat, MAX(humitat) as max_humitat
                    FROM dades WHERE year(fecha) = year(current_date)');
                    # Executem la Select
                    $stmt->execute();
                    # Capturem els resultats
                    $result = $stmt->fetch();

                    # Els distribuim en variables
                    $min_humit = $result['min_humitat'];
                    $max_humit = $result['max_humitat'];
                    echo "<h1> HUMITAT MAXIMA I MINIMA DEL ANY ACTUAL</h1>";
                    echo "<table border='1'>
                        <tr>
                            <th>Humitat min</th>
                            <th>Humitat max</th>
                        </tr>
                        <tr>
                            <td>$min_humit %</td>
                            <td>$max_humit %</td>
                        </tr>
                    </table>";
                    ?>
  </section>
    
  <br>
  <br>
    </div>
  <div class="divderecha">
    <div class="slideshow-container">

      <div class="mySlides fade">
       <div class="numbertext">1 / 4</div>
       <img src=".\images\arduino.png" style="width:90%">
       <div class="text"></div>
     </div>
     
     <div class="mySlides fade">
       <div class="numbertext">2 / 4</div>
       <img src=".\images\mysql.png" style="width:90%">
       <div class="text"></div>
     </div>
     
     <div class="mySlides fade">
       <div class="numbertext">3 / 4</div>
       <img src=".\images\Laptop.png" style="width:90%">
       <div class="text"></div>
     </div>
     <div class="mySlides fade">
      <div class="numbertext">4 / 4</div>
      <img src=".\images\logo.png" style="width:90%">
      <div class="text"></div>
    </div>
     
     <a class="prev" onclick="plusSlides(-1)">❮</a>
     <a class="next" onclick="plusSlides(1)">❯</a>
     
     </div>
     <br>
  </div>
  

 

<br><br><br><br>
     

     
     
     <!--<div style="text-align:center">
       <span class="dot" onclick="currentSlide(1)"></span> 
       <span class="dot" onclick="currentSlide(2)"></span> 
       <span class="dot" onclick="currentSlide(3)"></span> 
     </div>*/ -->
     
     <script>
     let slideIndex = 1;
     showSlides(slideIndex);
     
     function plusSlides(n) {
       showSlides(slideIndex += n);
     }
     
     function currentSlide(n) {
       showSlides(slideIndex = n);
     }
     
     function showSlides(n) {
       let i;
       let slides = document.getElementsByClassName("mySlides");
       let dots = document.getElementsByClassName("dot");
       if (n > slides.length) {slideIndex = 1}    
       if (n < 1) {slideIndex = slides.length}
       for (i = 0; i < slides.length; i++) {
         slides[i].style.display = "none";  
       }
       for (i = 0; i < dots.length; i++) {
         dots[i].className = dots[i].className.replace(" active", "");
       }
       slides[slideIndex-1].style.display = "block";  
       dots[slideIndex-1].className += " active";
     }
     </script>
  



    <div id="mobile__menu" class="overlay"> <a class="close">X</a>
      <div class="overlay__content"> <a href="index.php">Home</a> <a href="temperatura.php">Temperatura</a>
        <a href="humitat.php">Humitat</a> </div>
    </div>
    <script type="text/javascript" src="mobile.js"></script>
  </body>
</html>
