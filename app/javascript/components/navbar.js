const banner = document.querySelector('.banner');


  const initUpdateNavbarOnScroll = () => {
    const navbar = document.querySelector('.navbar-wagon');
    const brand = document.querySelector('.navbar-wagon-brand');
    if (banner) {
      if (navbar) {
        brand.classList.add('small');
        window.addEventListener('scroll', () => {
          if (window.scrollY >= window.innerHeight * 0.7) {
            navbar.classList.add('navbar-wagon-white');
            brand.classList.remove('small');
          } else {
            navbar.classList.remove('navbar-wagon-white');
            brand.classList.add('small');
          }
        });
      }
    } else {
      console.log('no banner')
      navbar.classList.add('navbar-wagon-white');
    }
  };

export { initUpdateNavbarOnScroll };
