$(document).on('ready page:load', function() {
  $('.shape').on('click', function() {
    $(this).toggleClass('is-active');

    // $(this).css({
    //   left: '80%',
    //   top: '50%'
    // });
  });


  // Hamburger
  $('#nav-toggle').on('click', function(e) {
    e.preventDefault();

    $(this).add('.sidebar').toggleClass('is-open');
    // $('.sidebar').toggleClass('is-open');
  })

});
