/*LOGICA: REGISTRO DE USUARIOS (KENDRA)*/

const btnRegresar = document.getElementById("btnRegresar");

fetch("./dynamics/php/logica.php")//Regresa una alerta en caso de que unos campos no se rellenen
.then((respuesta) => {
    return respuesta.json();
    }).then((datosJSON) => {
        alert(datosJSON.mensaje);
    });

btnRegresar.addEventListener("click", () => {
    window.location.href = "../templates/index1.html";
});