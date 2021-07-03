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