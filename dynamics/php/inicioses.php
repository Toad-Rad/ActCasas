<?php
    require "config.php";
    $conexion = connect();

    if (!$conexion){
        echo "No se pudo conectar a la base";
    }
    else{
        session_start();

        $usuario= (isset($_POST["usuario"]) && $_POST["usuario"] != "")? $_POST["usuario"] : false;
        $contras= (isset($_POST["contras"]) && $_POST["contras"] != "")? $_POST["contras"] : false;

        $usuario = filter_var($usuario, FILTER_SANITIZE_STRING);
        $contras = filter_var($contras, FILTER_SANITIZE_STRING);

        $_SESSION["usuario"] = $usuario;
        $_SESSION["contras"] = $contras;

        echo $_SESSION["usuario"], "<br>";
        echo $_SESSION["contras"];
    }   
?>