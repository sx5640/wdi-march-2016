// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready page:load', function() {
  $('.robot > a').on('click', function(eventObject) {
    eventObject.preventDefault();

    $.ajax({
      dataType: 'json',
      url: $(this).attr('href'),
      method: 'GET',
      success: function(data) {
        if ( data ) {
          console.log(data);

          // var robotImage = $('<img>').attr('src', 'https://robohash.org/' + data.address);
          // var robotDetailList = $('<dl>');
          // var robotDetailNameLabel = $('<dt>').html('Name');
          // var robotDetailName = $('<dd>').html(data.name);
          //
          // robotDetailList.append(robotDetailNameLabel)
          //                .append(robotDetailName);
          //
          // $('#robot-details').html(robotImage).append(robotDetailList);

          var templateSource = $('#robot-template').html();
          var compiledTemplate = Handlebars.compile(templateSource);
          var output = compiledTemplate( data );

          $('#robot-details').html(output);
        }
      }
    });
  });
});
