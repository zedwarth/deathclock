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
      $('#question-handed').val('left');
      console.log( "Hoi");
    });
    $('#right').on('click', function (e) {
      e.preventDefault();
      $('#question-handed').val('right');
    });

    $('#sports').on('click', function (e) {
      e.preventDefault();
      $('#question-sport-vid').val('sport');
    });
    $('#video_games').on('click', function (e) {
      e.preventDefault();
      $('#question-sport-vid').val('vid');
    });

    $('#beer').on('click', function (e) {
      e.preventDefault();
      $('#question-beer_liq').val('beer');
    });
    $('#liquor').on('click', function (e) {
      e.preventDefault();
      $('#question-beer_liq').val('liq');
    });

    $('#republican').on('click', function (e) {
      e.preventDefault();
      $('#question-rep_dem').val('rep');
    });
    $('#democrat').on('click', function (e) {
      e.preventDefault();
      $('#question-rep_dem').val('dem');
    });

    $('#dirty').on('click', function (e) {
      e.preventDefault();
      $('#question-dirty_rainey').val('dirty');
    });
    $('#rainey').on('click', function (e) {
      e.preventDefault();
      $('#question-dirty_rainey').val('rainey');
    });

    $('#sega').on('click', function (e) {
      e.preventDefault();
      $('#question-sega_nin').val('sega');
    });
    $('#nintendo').on('click', function (e) {
      e.preventDefault();
      $('#question-sega_nin').val('nin');
    });

    $('#ruby').on('click', function (e) {
      e.preventDefault();
      $('#question-ruby_js').val('ruby')
    });
    $('#css').on('click', function (e) {
      e.preventDefault();
      $('#question-ruby_js').val('css');
    });


});
