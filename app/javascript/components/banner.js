import Typed from 'typed.js';

const banner = document.querySelector('.banner');
console.log(banner)



  const loadDynamicBannerText = () => {
    if (banner) {
      console.log('there is a banner')
      new Typed('#banner-typed-text', {
        strings: ["Trouvez le meilleur DJ", "pour votre établissement"],
        typeSpeed: 50,
        loop: true
      });
    }
  };


export { loadDynamicBannerText };
