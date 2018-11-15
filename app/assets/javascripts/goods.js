window.onscroll = function () {
    stickySidebar();
};
var sidebar = document.getElementById("sidebar-price");
var stickySide = sidebar.offsetTop + 115.66;

function stickySidebar() {
    if (window.innerWidth >= 768) {
        if (window.pageYOffset >= stickySide) {
            sidebar.classList.add("sticky--side");
            sidebar.style.width = "21.5%";
        } else {
            sidebar.classList.remove("sticky--side");
            sidebar.style.width = "100%";
        }
    } else if (window.innerWidth <= 480) {
        if (window.pageYOffset >= stickySide) {
            sidebar.classList.add("sticky--side");
        } else {
            sidebar.classList.remove("sticky--side");
        }
    }
}