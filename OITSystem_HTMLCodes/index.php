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
          <li><a href="temperatura.php">Temperatura</a></li>
          <li><a href="humitat.php">Humitat</a></li>
        </ul>
      </nav>
      <a class="cta" href="index.php">Home</a>
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
    <h4>LL. DE PROGRAMACIÓ:</h4>
    <p>Els següents llenguatges de programació que hem utilitzat han sigut als següents: 
      <b>PHP:</b>S'utilitza generalment per a desenvolupar el backend d'una web, el costat del servidor. Així i tot, té nombroses utilitats en frontend.<BR>  
      <b>HTML:</b> s'utilitza per a estructurar i desplegar una pàgina web i els seus continguts.<BR> 
      <b>CSS:</b> s'utilitza per a ordenar les instruccions referents a l'aparença d'un lloc i presentar els continguts d'una pàgina de manera atractiva.<BR> 
      <b>C++:</b> s'utilitzará per programar les tasques que ha de fer la placa de WeMos D1 R2 en el Software. <BR> 
      <b>SQL:</b> És el que s'utilitza per les Base de Dades MySQL, en aquest cas ja ens el donen creat amb DB, TAULES i COLUMNES
    </p><br>
    <h4>MATERIALS:</h4>
    <p>Els següenst materials que necessitarem són: x1 Placa Arduino, x1 Transistor, x1 Relé,x2 resitències de (1 de 500ohms i l'altra de 1,5k), x1 Ventilador, x1 ProtoBoard, x1 Cable USB a MicroUSB, Uns quants cables de connexio
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
  <div class="titulante2">
    <h2 class="titulante">Consultar Últims valors de Temp i Humitat</h2>
  </div>
  <?php
  #Connectem a la base de dades amb l'arxiu.
  global $DBH;
  function connexio()
  {
      global $DBH;
      $conn = require('connexio.php');
  }
  #Connectem a la base de dades amb l'arxiu.
  connexio();
  # Fem el prepare de la select
  $stmt = $DBH->prepare('SELECT temperatura as temp, humitat as humit
  FROM dades ORDER BY dades_id DESC LIMIT 1');
  # Executem la Select
  $stmt->execute();
  # Capturem els resultats
  $result = $stmt->fetch();

  # Els distribuim en variables
  $temp = $result['temp'];
  $humit = $result['humit'];
  echo '            <div class="button-container">
              <form action="index.php" method="post">
                  <button type="submit" name="last_temp" class="button">Ultima temperatura';
  if(isset($_POST['last_temp'])) {
    echo ': '.$temp.' ºC';
  }
  echo ' 
                  </button>
              </form>

              <form action="index.php" method="post">
                  <button type="submit" name="last_humit" class="button">Ultima humitat';
  if(isset($_POST['last_humit'])) {
    echo ': '.$humit.' %';
  }
  echo'
                  </button>
              </form>
          </div>';
  
  if(isset($_POST['last_humit'])) {
      echo "<table>
      <tr><th>$humit %</th></tr>
          </table>";
  }
  ?>
  <!-- PHP Line Start
  <div class="button-container">
    <form action="index.php" method="post">
        <button type="submit" name="last_temp" class="button">Ultima temperatura</button>
    </form>

    <form action="index.php" method="post">
        <button type="submit" name="last_humit" class="button">Ultima humitat</button>
    </form>
</div>
 PHP Line Finish-->

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
