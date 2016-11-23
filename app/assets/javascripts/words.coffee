autocomplete = ->
  bank_code = undefined

autocomplete = ->
  bank_code = undefined

$("#account_bank").autocomplete
  source: (request, response) ->
    $.ajax
      url: "/words"
      dataType: "json"
      data: name: request.term
      success: (data) ->
        response $.map(data, (item) ->
          {
            label: item.wordTest
            code: item.id
          }
        )
  minLength: 1
