import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Trouvez le meilleur DJ", "pour votre établissement"],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
