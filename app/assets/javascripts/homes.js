$(document).ready(function () {
    $("#content").css({ minHeight: window.innerHeight - 74 });
});

$(".flash-sales__container__owl").owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    autoplay: true,
    autoplayTimeout: 1500,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 3
        },
        1000: {
            items: 5
        }
    }
});

$('.ads__slider').owlCarousel({
    loop: true,
    center: true,
    items: 3,
    margin: 30,
    autoplay: true,
    dots: true,
    nav: true,
    autoplayTimeout: 85000000,
    smartSpeed: 450,
    navText: ['<i class="fas fa-angle-left"></i>', '<i class="fas fa-angle-right"></i>'],
    responsive: {
        0: {
            items: 1
        },
        768: {
            items: 2
        },
        1170: {
            items: 3
        }
    }
});

var countDownDate = new Date("Dec 2, 2018 12:00:00").getTime();
var ct = document.getElementsByClassName(".flash-sales__timer__countdown__content");

var x = setInterval(function () {
    var now = new Date().getTime();
    var distance = countDownDate - now;

    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    document.getElementById("flash-sales__timer__countdown__day").innerHTML = days + "d";
    document.getElementById("flash-sales__timer__countdown__hour").innerHTML = hours + "h";
    document.getElementById("flash-sales__timer__countdown__minute").innerHTML = minutes + "m";
    document.getElementById("flash-sales__timer__countdown__second").innerHTML = seconds + "s";

    if (distance < 0) {
        clearInterval(x);
        var i;
        for (var i = 0; i < ct.length; i++) {
            ct[i].style.display = "none";
        }
        document.getElementById("countdown-timer").innerHTML = "EXPIRED";
    }
}, 1000);