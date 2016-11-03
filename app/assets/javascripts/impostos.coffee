# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $btn_add = $("#add-faixa")
  $div_faixas = $(".faixa-limites")
  contador = 0
  $btn_add.on "click",(e) ->
    e.preventDefault()
    contador++
    div_add_faixas = '
          <div class="faixa-limites form-group form-inline">
            <div class="form-group">
              <p>
                  limite inferior: <input name="imposto[tabela_de_limites_attributes]['+contador+'][limite_inferior]" id="imposto_tabela_de_limites_attributes_'+contador+'_limite_inferior" type="text">
              </p>
            </div>
            <div class="form-group">
              <p>
                  limite superior: <input name="imposto[tabela_de_limites_attributes]['+contador+'][limite_superior]" id="imposto_tabela_de_limites_attributes_'+contador+'_limite_superior" type="text">
              </p>
            </div>
            <div class="form-group">
              <p>
                  aliquota: <input name="imposto[tabela_de_limites_attributes]['+contador+'][aliquota]" id="imposto_tabela_de_limites_attributes_'+contador+'_aliquota" type="text">
              </p>
            </div>
            <a href="#" class="remove_field"><i class="fa fa-times" aria-hidden="true"></i></a></div>
          </div>
            '
    $($div_faixas).append(div_add_faixas)


  $div_faixas.on "click",".remove_field",(e) ->
    e.preventDefault()
    $(this).parent('div').remove()

