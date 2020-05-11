$(document).ready(function() {


  var readURL = function(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        $('.avatar').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }
  }


  $(".file-upload").on('change', function() {
    readURL(this);
  });
});

$(".js-example-basic-multiple-limit").select2({
  maximumSelectionLength: 5
});