<?php 
    include('cnx.php');
    $conn = Conecta();
    
    $sql = "SELECT * FROM tablaprueba";
    $result = mysqli_query($conn, $sql);

    $rows = array();
    while($row = mysqli_fetch_array($result)){
        $rows[] = $row;
    }
    echo json_encode($rows);

?>