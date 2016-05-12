function initMap() {

  mapPlaceholder = $('#map');

  map = new google.maps.Map(mapPlaceholder[0], {
    center: {lat: mapPlaceholder.data('latitude'), lng: mapPlaceholder.data('longitude')},
    zoom: 16
  });

}
