const navbarScroll = () => {
  const navbar = document.querySelector(".esf-navbar");
  if (navbar) {
    window.addEventListener("scroll", (event) => {
      if (window.scrollY > window.innerHeight) {
        navbar.classList.add("navbar-dark");
      } else {
        navbar.classList.remove("navbar-dark");
      }
    });
  }
};

export { navbarScroll };