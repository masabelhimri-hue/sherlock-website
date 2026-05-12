/* Sherlock Home Inspector — Site JS */

(function () {
  'use strict';

  /* ── MOBILE NAV ── */
  var hamburger = document.querySelector('.nav-hamburger');
  var mobileMenu = document.querySelector('.nav-mobile-menu');

  if (hamburger && mobileMenu) {
    hamburger.addEventListener('click', function (e) {
      e.stopPropagation();
      hamburger.classList.toggle('open');
      mobileMenu.classList.toggle('open');
    });

    // Close on any link click
    mobileMenu.querySelectorAll('a').forEach(function (link) {
      link.addEventListener('click', function () {
        hamburger.classList.remove('open');
        mobileMenu.classList.remove('open');
      });
    });

    // Close on outside click
    document.addEventListener('click', function (e) {
      if (!hamburger.contains(e.target) && !mobileMenu.contains(e.target)) {
        hamburger.classList.remove('open');
        mobileMenu.classList.remove('open');
      }
    });

    // Close on Escape key
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape') {
        hamburger.classList.remove('open');
        mobileMenu.classList.remove('open');
      }
    });
  }

  /* ── COUNTY ACCORDION (FAQ) ── */
  window.toggleCounty = function (btn) {
    var item = btn.closest('.county-item');
    var isOpen = item.classList.contains('open');
    document.querySelectorAll('.county-item.open').forEach(function (i) { i.classList.remove('open'); });
    if (!isOpen) item.classList.add('open');
  };

  /* ── FAQ ACCORDION (if present) ── */
  var faqItems = document.querySelectorAll('.faq-item');
  if (faqItems.length) {
    faqItems.forEach(function (item) {
      var btn = item.querySelector('.faq-question');
      if (btn) {
        btn.addEventListener('click', function () {
          var isOpen = item.classList.contains('open');
          faqItems.forEach(function (i) { i.classList.remove('open'); });
          if (!isOpen) item.classList.add('open');
        });
      }
    });
  }

})();
