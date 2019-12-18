const changeOpacity = () => {
  if (window.location.href.includes("/projects")) {
    const card = document.querySelectorAll('.card');
    const card_array = [card[0], card[1], card[2]];
  
    card_array.forEach(element => {
      element.addEventListener("mouseover", (event) => {
        element.querySelector(".card-image").style.opacity = 0.04;
        element.querySelector(".card-description").classList.remove('d-none');
        element.querySelector(".card-buttonholder").classList.remove('d-none');
        element.querySelector(".card-title").style.top = "10%";
        element.querySelector(".card-catch-phrase").style.top = "20%";
        element.querySelector(".card-buttonholder").style.bottom = "10%";
        
      })
    })
    card_array.forEach(element => {
      element.addEventListener("mouseout", (event) => {
        element.querySelector(".card-image").style.opacity = 1;
        element.querySelector(".card-description").classList.add('d-none');
        element.querySelector(".card-buttonholder").classList.add('d-none');
      })
    })
  }  
}

export {changeOpacity}