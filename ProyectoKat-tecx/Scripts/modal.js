// Selecciona todos los elementos con la clase "mostrarModalBtn" (todos los botones)
const mostrarModalBtns = document.querySelectorAll(".mostrarModalBtn");

// Selecciona todos los elementos con la clase "modal" (todas las ventanas modales)
const modals = document.querySelectorAll(".modal");

// Itera a través de cada botón
mostrarModalBtns.forEach(btn => {
    // Agrega un evento "click" a cada botón
    btn.addEventListener("click", function () {
        // Obtiene el valor del atributo "data-modal" del botón, que contiene el ID de la ventana modal
        const modalId = this.getAttribute("data-modal");
        // Encuentra la ventana modal correspondiente usando su ID
        const modal = document.getElementById(modalId);
        // Muestra la ventana modal estableciendo su estilo "display" a "block"
        modal.style.display = "block";
    });
});

// Itera a través de cada ventana modal
modals.forEach(modal => {
    // Agrega un evento "click" al elemento con la clase "cerrar" dentro de la ventana modal
    modal.querySelector(".cerrar").addEventListener("click", function () {
        // Oculta la ventana modal estableciendo su estilo "display" a "none"
        modal.style.display = "none";
    });

    // Agrega un evento "click" al objeto "window" (ventana del navegador)
    window.addEventListener("click", function (event) {
        // Si se hace clic en algún lugar fuera de la ventana modal, cierra la ventana modal
        if (event.target === modal) {
            modal.style.display = "none";
        }
    });
});