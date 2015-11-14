$('.fa').on('click', function(e){
    e.preventDefault();
    var number, operation;
    number = $('input[name=number]').val();
    if ($(this).parent().val() !== 'equal'){
      operation = $(this).parent().val();
      $('input[name=number]').val('');
      $('.fa-home').parent().attr('data-first', number);
      $('.fa-home').parent().attr('data-operation', operation);
      console.log(number);
      console.log(operation);
    }
    else{
      $('.fa-home').parent().attr('data-second', number);
        $.ajax({
          url: '/solve' + "/" + $('.fa-home').parent().attr('data-operation'),
          method: 'POST',
          data: {operation: $('.fa-home').parent().attr('data-operation'), x: $('.fa-home').parent().attr('data-first'), y: $('.fa-home').parent().attr('data-second')},
          success: function(response){
            $('input[name=number]').val(response);
          },
          error: function(response){
            alert('error');
            console.log(response);
          }
        });
    }
});
