$(document).ready(function() {
  $('#new_film').on('submit', function(e) {
    e.preventDefault();

    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize(),
      dataType: 'json'
    }).done(function(response) {
      console.log(response);
      // how to check that what you got in response is what you intended to get
      
    });
  });

});
