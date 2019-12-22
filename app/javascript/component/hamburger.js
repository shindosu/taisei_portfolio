const navbar = document.querySelector('.navbar')

function openNav() {
  hamburger.classList.add("is-active");
  navbar.style.backgroundColor = "rgba(0,0,0,0.9)";
  navbar.style.zIndex = "1"
}

function closeNav() {
  hamburger.classList.remove("is-active");
  navbar.style.backgroundColor = "";
  navbar.style.zIndex = "0"
}

// Hamburger Menu Spin
var hamburger = document.querySelector(".hamburger");

hamburger.addEventListener('click', () => hamburger.classList.contains('is-active') ? closeNav() : openNav());

closeNav();