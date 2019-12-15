if (window.location.href.includes("projects")){
  const button = document.querySelectorAll('.btn');
  const button_array = [button[0], button[1], button[2]];
  console.log(button_array)
  const handleClick = (event) => {
    button_array.forEach(element => {
      element.classList.remove('btn-danger');     
    });
    event.currentTarget.classList.add('btn-danger'); 
  };
  button_array.forEach(element => {
    element.addEventListener("click", (handleClick))
  });  
}