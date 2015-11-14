$('button[name=operation]').on('click', function(e){
    e.preventDefault();

    var number = $('input[name=number]').val();
    var operation = $(this).val();
    $('button[name=result]').attr('data-operation', operation);
    $('input[name=number]').val('');

    if($('button[name=result]').attr('data-first') === 'c'){
      $('button[name=result]').attr('data-first', number);
    }
    else{
      // $('button[name=result]').attr('data-second', number);
      getResult(operation,  $('button[name=result]').attr('data-first'),number);
    }
});

$('button[name=result]').on('click', function(e){
  e.preventDefault();
  var operation = $(this).attr('data-operation');
  var first = $(this).attr('data-first');
  var second = $('input[name=number]').val();
  getResult(operation, first, second);
});

function getResult(operation, first, second){
  $.ajax({
    url: '/solve',
    method: 'POST',
    data: {operation: operation, first: first, second: second},
    success: function(response){
      $('input[name=number]').val(response);
      $('button[name=result]').attr('data-first', response);
    },
    error: function(response){
      alert('error');
      console.log(response);
    }
  });
}

$('button[name=number]').on('click', function(e){
  e.preventDefault();
  $('input[name=number]').val($(this).val());
});

$('button[name=clear]').on('click', function(e){
  e.preventDefault();
  $('input[name=number]').val('');
  $('button[name=result]').attr('data-first', 'c');
});
