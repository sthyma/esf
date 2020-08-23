const multiStepForm = () => {
  const slidepage = document.querySelector(".slidepage");
  const firstNextBtn = document.querySelector(".nexbtn");
  const prevBtn = document.querySelector(".prev-1");
  
  firstNextBtn.addEventListener("click", function(){
    slidepage.style.marginLeft = "-50%";
  });

  prevBtn.addEventListener("click", function(){
    slidepage.style.marginLeft = "0%";
  });
}

export { multiStepForm };