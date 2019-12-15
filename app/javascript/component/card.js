const card = document.getElementById('.card');

const changeState = () => {
  card.addEventListener("hover", (event) => {
    const title = <%= project.title %>
    console.log(title);
  });
};