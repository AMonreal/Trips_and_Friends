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
