
 $('#name').focusout(function() {
  $.ajax({
    url: 'https://genderize.p.mashape.com/?name=' + $('#name').val() + '&country_id=US&language_id=en', // The URL to the API. You can get this by clicking on "Show CURL example" from an API profile
    type: 'GET', // The HTTP Method
    data: {}, // Additional parameters here
    datatype: 'json',
    success: function(data) {
      console.log(JSON.stringify(data));
    },
    error: function(err) { console.log(err); },
    beforeSend: function(xhr) {
    xhr.setRequestHeader("X-Mashape-Authorization", "IXEEX6XZ6OFh0b2qPKbwOrHEgZ2puQKT"); // Enter here your Mashape key
    }
  });
});