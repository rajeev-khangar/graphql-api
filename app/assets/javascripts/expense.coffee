$(document).on 'ready page:load', ->
  $('#expenseSubmit').on 'click', ->
    data = $('#expenseForm').serialize()
    $.ajax
      type: 'POST'
      url: '/expenses'
      data: data
      dataType: 'js'
    return
  return
