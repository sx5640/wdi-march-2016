$(document).on('ready', function() {
  $('#click-bait').on('click', function(eventObject) {
    eventObject.preventDefault();
    alert("Link was clicked!");
  });

  function secondLevelEventHandler(e) {
    e.stopPropagation();
    alert('#second-level received an event');
  }

  $('#second-level').on('click', secondLevelEventHandler);

  var firstLevelEventHandler = function() {
    alert('#first-level received an event');
  }

  $('#first-level').on('click', firstLevelEventHandler);

  $(window).on('keyup', function(eventObject) {
    $('.keypressed').html(eventObject.which);
  });
});

// $(function() {
//
// });
//
// $(document).ready(function() {
//
// });
