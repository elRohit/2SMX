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
          <li><a href="humitat.php">Humitat</a></li>
        </ul>
      </nav>
      <a class="cta" href="temperatura.php">Temperatura</a>
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
      <?php
    global $DBH;
    function connexio()
    {
        global $DBH;
        $conn = require('connexio.php');
    }
    #Connectem a la base de dades amb l'arxiu.
    connexio();
    #Capturem la data
    $fecha = $_POST['Data'];

    # Fem el prepare de la select
    $stmt = $DBH->prepare('SELECT MIN(humitat) as min_humit, MAX(humitat) as max_humit, AVG(humitat) as avg_humit
FROM dades
WHERE date(fecha) = :fecha');

    #Donem el parametra data
    $stmt->bindParam(':fecha', $fecha);
    # Executem la Select
    $stmt->execute();
    # Capturem els resultats
    $result = $stmt->fetch();

    # Els distribuim en variables
    $min = $result['min_humit'];
    $max = $result['max_humit'];
    $avg = round($result['avg_humit']);
#    $avg = $result['avg_humit'];

    #Mostrem les dades.
    echo "<h1> ESTADISTIQUES HUMITAT </h1>";
    echo "<main>";
    echo "<table border='1'>
  <tr>
    <th>Data</th>
    <th>Humitat mitja</th>
    <th>Humitat minima</th>
    <th>Humitat maxima</th>
  </tr>
  <tr>
    <td>$fecha</td>
    <td>$avg %</td>
    <td>$min %</td>
    <td>$max %</td>
  </tr>
</table>";
    echo "</main>";
    ?>
    <div class="button-container">
        <form action="humitat.php" method="post">
            <button type="submit" name="back" class="button3">Torna a seleccionar data</button>
        </form>

        <form action="temperatura_r.php" method="post">
            <input type="hidden" name="Data" value="<?php echo $fecha; ?>">
            <button type="submit" name="temperatura" class="button3">Veure la temperatura</button>
        </form>
    </div>
  <br>
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
