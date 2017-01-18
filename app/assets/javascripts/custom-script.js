$(function() {
    $("#uploadBtn").on("change", function () {
      $("#uploadPath").val($("#uploadBtn").val());
      console.log($("#uploadPath").val());
    })
    
    
    $("#uploadBtn").on("change", function(){
    var preview = document.querySelector('#preview');
    var files   = document.querySelector('input[type=file]').files;

    function readAndPreview(file) {

      if ( /\.(jpe?g|png|gif)$/i.test(file.name) ) {
        var reader = new FileReader();

        reader.addEventListener("load", function () {
          var image = new Image();
          image.height = 100;
          image.width = 100;
          image.title = file.name;
          image.src = this.result;
          preview.appendChild( image );
        }, false);

        reader.readAsDataURL(file);
      }

    }

    if (files) {
      [].forEach.call(files, readAndPreview);
    }
  })
})