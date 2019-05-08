import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Le Wagon sexy cocktails"],
    typeSpeed: 200,
    loop: true
  });
}

export { loadDynamicBannerText };


