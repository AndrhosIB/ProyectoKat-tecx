const estrellas = document.querySelectorAll(".estrella");
const tarjeta = document.querySelector(".tarjeta");

estrellas.forEach(estrella => {
    estrella.addEventListener("click", function () {
        const valor = parseInt(this.getAttribute("data-valor"));

        // Agrega la clase "activa" a las estrellas seleccionadas y sus predecesoras
        for (let i = 1; i <= valor; i++) {
            tarjeta.querySelector(`[data-valor="${i}"]`).classList.add("activa");
        }

        // Quita la clase "activa" de las estrellas no seleccionadas y sus sucesoras
        for (let i = valor + 1; i <= 5; i++) {
            tarjeta.querySelector(`[data-valor="${i}"]`).classList.remove("activa");
        }
    });
});