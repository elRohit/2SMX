<?php
#Variables de connexio.
$db_host="localhost";
$db_nom="projecte";
$db_usuari="user";
$db_password="aplicacions";

# var_dump(PDO::getAvailableDrivers());

try {
    $DBH = new PDO("mysql:host=$db_host;dbname=$db_nom",$db_usuari,$db_password);
}
catch (PDOException $e){
    echo $e->getMessage();
}
finally {
    $connexio=null;
}
?>
