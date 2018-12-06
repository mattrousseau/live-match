const banner = document.querySelector('.banner');


  const initUpdateNavbarOnScroll = () => {
    const navbar = document.querySelector('.navbar-wagon');
    if (banner) {
      if (navbar) {
        window.addEventListener('scroll', () => {
          if (window.scrollY >= window.innerHeight * 0.7) {
            navbar.classList.add('navbar-wagon-white');
          } else {
            navbar.classList.remove('navbar-wagon-white');
          }
        });
      }
    } else {
      console.log('no banner')
      navbar.classList.add('navbar-wagon-white');
    }
  };

export { initUpdateNavbarOnScroll };
