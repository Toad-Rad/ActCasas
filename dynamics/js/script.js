/*LOGICA: REGISTRO DE USUARIOS (KENDRA)*/

window.addEventListener("load", () =>{
    const btnRegresar = document.getElementById("btnRegresar");
    const btnMostrar = document.getElementById("contra-check");
    const inputcontr = document.getElementById("contra");

    btnMostrar.addEventListener("click", ()=>{
        if(inputcontr.type == "password")
            inputcontr.type = "text";
        else
            inputcontr.type = "password";
        });

    fetch("./dynamics/php/logica.php")//Regresa una alerta en caso de que unos campos no se rellenen
    .then((respuesta) => {
        return respuesta.json();
        }).then((datosJSON) => {
            alert(datosJSON.mensaje);
        });
    

    btnRegresar.addEventListener("click", () => {
        window.location.href = "../templates/index1.html";
    });
});
