
$(document).ready(function(){

  $('.truckin_button').click( function(){

    var number = $('.keep_number').text();
    var new_number= parseInt(number) + 1;
    $('.keep_number').text(new_number);
    $('.truckin_button').remove();
  });


});