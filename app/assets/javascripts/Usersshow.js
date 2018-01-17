new Shubox("#avatar", {
  // image transform queue
  transformName: "avatar-demo",
  // do not use built-in previewsContainer
  previewsContainer: false,
  // on success - insert the image w/a flip-in
  // animate.css classname
  success: function(file) {
    img = new Image();
    img.onload = function() {
      $(".avatar").append(
        '<img src="' + file.s3url + '" class="animated flipInY" />'
      );
    };
    img.src = file.s3url;
  }
});


var handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'multi_markers'}}, function(){
  var markers = handler.addMarkers([
    { lat: 43, lng: 3.5},
    { lat: 45, lng: 4},
    { lat: 47, lng: 3.5},
    { lat: 49, lng: 4},
    { lat: 51, lng: 3.5}
  ]);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});
