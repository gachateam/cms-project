var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    if (n > slides.length) { slideIndex = 1 }
    if (n < 1) { slideIndex = slides.length }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
        slides[i].classList.remove('show');
    }
    slides[slideIndex - 1].style.display = "flex";
    slides[slideIndex - 1].classList.add('show');
}

var option = {
    margin: 10,
    nav: true,
    navText: ["<div class='nav-button owl-prev'><i class='fas fa-arrow-left'></i></div>", "<div class='nav-button owl-next'><i class='fas fa-arrow-right'></i></div>"],
    responsiveClass: true,
    responsive: {
        0: {
            items: 1,
            nav: true,
            loop: true
        },
        600: {
            items: 2,
            nav: false,
            loop: true,
        },
        1000: {
            items: 4,
            nav: true,
            loop: true
        }
    }
}
var owl1 = $("#owl-example1")
owl1.owlCarousel(option);
var owl2 = $("#owl-example2")
owl2.owlCarousel(option);
var owl3 = $("#owl-example3")
owl3.owlCarousel(option);
var owl4 = $("#owl-example4")
owl4.owlCarousel(option);