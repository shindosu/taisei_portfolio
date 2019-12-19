function openNav() {
  hamburger.classList.add("is-active");
}

function closeNav() {
  hamburger.classList.remove("is-active");
}

// Hamburger Menu Spin
var hamburger = document.querySelector(".hamburger");

hamburger.addEventListener('click', () => hamburger.classList.contains('is-active') ? closeNav() : openNav());

closeNav();