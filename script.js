const hamburger = document.querySelector('.nav-hamburger');
const mobileMenu = document.querySelector('.nav-mobile-menu');

hamburger.addEventListener('click', function() {
  mobileMenu.classList.toggle('open');
  const isOpen = mobileMenu.classList.contains('open');
  hamburger.setAttribute('aria-expanded', isOpen);
});

// Close menu when a link is clicked
document.querySelectorAll('.nav-mobile-menu a').forEach(function(link) {
  link.addEventListener('click', function() {
    mobileMenu.classList.remove('open');
    hamburger.setAttribute('aria-expanded', false);
  });
});
