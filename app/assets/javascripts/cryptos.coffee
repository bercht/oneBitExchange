$(document).ready ->

  $source_currency = $('#source_currency')
  $target_currency = $('#target_currency')
  
  $amount = $('#amount')
  $invertButton = $('#invertButton')
  convert_crypto = ->
      $.ajax '/convert_crypto',
          type: 'GET'
          dataType: 'json'
          data: {
                  source_currency: $("#source_currency").val(),
                  target_currency: $("#target_currency").val(),
                  amount: $("#amount").val()
                }
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
          success: (data, text, jqXHR) ->
            $('#result').val(data.value)
        return false;


  $invertButton.click ->
    source_currency = $source_currency.val()
    target_currency = $target_currency.val()

    $source_currency.val(target_currency)
    $target_currency.val(source_currency)




  
  $amount.keyup -> convert_crypto()


