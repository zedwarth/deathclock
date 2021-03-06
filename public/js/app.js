$('#name').focusout(function() {
  $.ajax({
    url: 'https://genderize.p.mashape.com/?name=' + $('#name').val() + '&country_id=US&language_id=en', // The URL to the API. You can get this by clicking on "Show CURL example" from an API profile
    type: 'GET', // The HTTP Method
    data: {}, // Additional parameters here
    datatype: 'json',
    success: function(data) {
      console.log(JSON.stringify(data));
      var gender = data.gender;
      console.log(gender);
      if (gender === "male") {
        $('#gender_male').prop('checked',true);
      }
      else if (gender === "female") {
        $('#gender_female').prop('checked',true);
      }
      else {
      }
    },
    error: function(err) { console.log(err); },
    beforeSend: function(xhr) {
    xhr.setRequestHeader("X-Mashape-Authorization", "IXEEX6XZ6OFh0b2qPKbwOrHEgZ2puQKT"); // Enter here your Mashape key
    }
  });
});

$(document).ready(function (){
    // Init Skrollr
    var s = skrollr.init({
        render: function(data) {
            //Debugging - Log the current scroll position.
            // console.log(data.curTop);
        }
    });

    // CLICK EVENTS for OR questions
    $('#left').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#right').removeClass('faded');
      $('#question-handed').val('left');
      console.log( "Hoi");
    });
    $('#right').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#left').removeClass('faded');
      $('#question-handed').val('right');
    });

    $('#sports').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#video_games').removeClass('faded');
      $('#question-sport-vid').val('sport');
    });
    $('#video_games').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#sports').removeClass('faded');
      $('#question-sport-vid').val('vid');
    });

    $('#beer').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#liquor').removeClass('faded');
      $('#question-beer_liq').val('beer');
    });
    $('#liquor').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#beer').removeClass('faded');
      $('#question-beer_liq').val('liq');
    });

    $('#republican').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#democrat').removeClass('faded');
      $('#question-rep_dem').val('rep');
    });
    $('#democrat').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#republican').removeClass('faded');
      $('#question-rep_dem').val('dem');
    });

    $('#dirty').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#rainey').removeClass('faded');
      $('#question-dirty_rainey').val('dirty');
    });
    $('#rainey').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#dirty').removeClass('faded');
      $('#question-dirty_rainey').val('rainey');
    });

    $('#sega').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#nintendo').removeClass('faded');
      $('#question-sega_nin').val('sega');
    });
    $('#nintendo').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#sega').removeClass('faded');
      $('#question-sega_nin').val('nin');
    });

    $('#ruby').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#css').removeClass('faded');
      $('#question-ruby_js').val('ruby')
    });
    $('#css').on('click', function (e) {
      e.preventDefault();
      $(this).addClass('faded');
      $('#ruby').removeClass('faded');
      $('#question-ruby_js').val('css');
    });

    $('.button').hover(function () {
        $(this).toggleClass('fade');
    });

});