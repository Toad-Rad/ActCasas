<?php

/*LOGICA: REGISTRO DE USUARIOS (KENDRA)*/


require "config.php";
$conexion= //"funcion que conecta PHP con DB"

$miRegex = "/[A-z 0-9 \W]{8,}";
$miRegex2 = "/[A-z 0-9 \W]{5,}";

if(!$conexion)//Revisa si se pudo establecer conexion con la DB
{
    echo "No se pudo establecer conexión con la base de datos";

}else
    {
        $usuario = (isset($_POST["usuario"]) && $_POST["usuario"] != "")? $_POST["usuario"]: false;//Pide los datos del formulario
        $contraseña = (isset($_POST["contraseña"]) && $_POST["contraseña"] != "")? $_POST["contraseña"]: false;//Pide los datos del formulario

        if($usuario && $contraseña)//Revisa si esos datos en efecto entraron
        {
            if(preg_match($miRegex,$contraseña) ==1 && preg_match($miRegex2,$usuario) ==1)//Filtro regex
            {

                $sql = "SELECT nombre FROM usuarios WHERE nombre LIKE '%$usuario%'";//Peticion a la DB
                $query1 = mysqli_query($conexion,$query1);//Conexion

                if(!$res)
                {
                    $usuFiltrado= filter_var($usuario, FILTER_SANITIZE_STRING);//Entrada sanitizada
                    $contraFiltrada= filter_var($contraseña, FILTER_SANITIZE_STRING);//Entrada sanitizada

                    $sql2 = "INSERT INTO usuario (nombre, 'password') VALUES ('$usuFiltrado', '$contraFiltrada')";
                    $query2 = mysqli_query($conexion,$sql2);

                }else  
                    {
                        $respuesta= array("mensaje" => "Este usuario ya existe");
                    }

            }else if(preg_match($miRegex,$contraseña)!=1)
                {
                    $respuesta= array("mensaje" => "Contraseña no válida");

                    }else if(preg_match($miRegex2,$usuario)!=1)
                    {
                        $respuesta= array("mensaje" => "Usuario no válido");
                    }


        }else
            {
                if(!$usuario)
                {
                    $respuesta= array("mensaje" => "Falta rellenar campo Usuario");//Si no se envía Usuario, manda un mensaje hecho array

                }else if (!$contraseña)
                        {
                            $respuesta= array("mensaje" => "Falta rellenar campo Usuario");//Si no se envía Contraseña, manda un mensaje hecho array
                        }
            }
    }
    echo json_encode($respuesta);//Se convierte la variable $respuesta en un arreglo y se envía al JS
?>