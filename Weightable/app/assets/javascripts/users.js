
$(document).ready(function(){

  $(document).on('click', '.truckin_button', function(){
    var number =  $(this).parent().parent().find('.keep_number').html();
    var new_number= (parseInt(number) + 1).toString();
    var log = $(this).parent().parent().find('.keep_number').html(new_number)
    $(this).parent().parent().find('.truckin_button').remove();

    $.ajax({
        url: ,
        dataType: 'script'
     });

  });


});