window.addEventListener("load", ()=>{
    const btnContras = document.getElementById("contra-check");
    const inputcontr = document.getElementById("contras");
    const btnCorr = document.getElementById("correg");
    btnContras.addEventListener("click", ()=>{
        if(inputcontr.type == "password")
            inputcontr.type = "text";
        else
            inputcontr.type = "password";
    });
    btnCorr.addEventListener("click", ()=>{
        inputcontr.type = "password";
    })
});