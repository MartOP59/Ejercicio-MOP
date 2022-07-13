<?php 
    include('cnx.php');
    $conn = Conecta();

    $nombre = (isset($_POST['Nombre'])) ? $_POST['Nombre'] : '';
    $apellidos = (isset($_POST['Apellidos'])) ? $_POST['Apellidos'] : '';
    $nacimiento = (isset($_POST['fechaNacimiento'])) ? $_POST['fechaNacimiento'] : '';
    //$fechaRegistroEnSistema = date_default_timezone_set('UTC');
    


    $insercion = "INSERT INTO tablaprueba (Nombre, Apellidos, fechaNacimiento, fechaRegistroEnSistema) VALUES ('$nombre','$apellidos','$nacimiento' , now())" ;
    $resultado = mysqli_query($conn,$insercion);

?>