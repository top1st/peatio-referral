$(".ticker-auto-slider").slick({

    // normal options...
    infinite: true,
    slidesToShow: 4,
    dots: false,
    autoplay: true,
    autoplaySpeed: 2000,
    arrows: false,

    // the magic
    responsive: [{

        breakpoint: 1024,
        settings: {
            slidesToShow: 3,
            infinite: true
        }

    }, {

        breakpoint: 600,
        settings: {
            slidesToShow: 1,
            dots: true
        }

    }]
});
