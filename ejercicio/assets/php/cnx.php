<?php
    function Conecta(){
        $servidor = mysqli_connect("localhost","root","");
        mysqli_select_db($servidor,"ejercicio");
        return $servidor;
    }
?>