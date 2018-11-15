function initMap() {
    var loc = { lat: -6.224609, lng: 106.809740 };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 17,
        center: loc,
        gestureHandling: 'cooperative'
    });
    var marker = new google.maps.Marker({
        position: loc,
        map: map
    });
}