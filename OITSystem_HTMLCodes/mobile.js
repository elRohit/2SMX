const doc = document;
const menuOpen = doc.querySelector(".menu");
const menuClose = doc.querySelector(".close");
const overlay = doc.querySelector(".overlay");

menuOpen.addEventListener("click", () => {
  overlay.classList.add("overlay--active");
});

menuClose.addEventListener("click", () => {
  overlay.classList.remove("overlay--active");
});

const tituloAnimado = document.querySelector(".titulo-animado");

const colores = ["color-2", "color-3", "color-4", "color-1"]; // cambiar los nombres de las clases de colores según lo que hayas definido

let index = 0;

setInterval(() => {
  tituloAnimado.classList.remove(colores[index % 4]);
  index++;
  tituloAnimado.classList.add(colores[index % 4]);
  tituloAnimado.classList.add("vibrating");
}, 3000); // cada cambio de color tendrá un retraso de 3 segundos
