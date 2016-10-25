# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $radio = $("input[type=radio][name=tipo_transacao]")
  $radio_cliente = $("input[type=radio][name=tipo_transacao][value=1]")
  $radio_fornecedor = $("input[type=radio][name=tipo_transacao][value=2]")
  $div_cliente = $("#cliente")
  $div_fornecedor = $("#fornecedor")
  $radio.on "change", ->
    if $radio_cliente.is(':checked')
      $div_cliente.show()
      $radio_fornecedor.val("")
      $div_fornecedor.hide()
    else
      $div_cliente.hide()
      $radio_cliente.val("")
      $div_fornecedor.show()
