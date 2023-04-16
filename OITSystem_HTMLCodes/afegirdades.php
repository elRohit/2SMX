<!DOCTYPE html>
<html lang="ca">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="theme-color" content="#e0d860"/>
    <title>Estació meteorologica</title>
</head>
<body>
<div class="main-body">
    
    <?php
    global $DBH;
    function connexio()
    {
        global $DBH;
        $conn = require('connexio.php');
    }
    #Connectem a la base de dades amb l'arxiu.
    connexio();
    #Capturem les dades
   
    $humit = $_GET['EnvHumitat'];
    $temperat = $_GET['EnvTemperatura'];

    # Fem el prepare de l update
    $stmt = $DBH->prepare('INSERT INTO dades (humitat,temperatura,fecha) values(:humit, :temperat, CURRENT_TIMESTAMP())');

    #Donem els parametres temperatura i humitat
    $stmt->bindParam(':humit', $humit);
    $stmt->bindParam(':temperat', $temperat);
    # Executem la Select
    $stmt->execute();
    

    #Mostrem les dades afegides
    $avui = getdate();
    echo "humitat: ".$humit." temperatura: ".$temperat." dia: ".$avui['year']."-".$avui['mon']."-".$avui['mday'];
    ?>
</div>
</body>
</html>
