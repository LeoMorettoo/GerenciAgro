# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $('#trasacaoTable').DataTable(
    dom: 'Bfrtip',
    language: {
                sEmptyTable: "Nenhum registro encontrado",
                sInfo: "Mostrando de _START_ até _END_ de _TOTAL_ registros",
                sInfoEmpty: "Mostrando 0 até 0 de 0 registros",
                sInfoFiltered: "(Filtrados de _MAX_ registros)",
                sInfoPostFix: "",
                sInfoThousands: ".",
                sLengthMenu: "_MENU_ resultados por página",
                sLoadingRecords: "Carregando...",
                sProcessing: "Processando...",
                sZeroRecords: "Nenhum registro encontrado",
                sSearch: "Pesquisar",
                oPaginate: {
                    sNext: "Próximo",
                    sPrevious: "Anterior",
                    sFirst: "Primeiro",
                    sLast: "Último"
                },
                oAria: {
                    sSortAscending: ": Ordenar colunas de forma ascendente",
                    sSortDescending: ": Ordenar colunas de forma descendente"
                }
    }
    buttons: [
        {
            extend:    'copyHtml5',
            text:      'Copiar <i class="fa fa-files-o fa-3x" style="margin-right:20px;"></i>',
            titleAttr: 'Copy'
        },
        {
            extend:    'excelHtml5',
            text:      'Exportar Excel <i class="fa fa-file-excel-o fa-3x" style="margin-right:20px;"></i>',
            titleAttr: 'Excel'
        },
        {
            extend:    'csvHtml5',
            text:      'Exportar CSV <i class="fa fa-file-text-o fa-3x" style="margin-right:20px;"></i>',
            titleAttr: 'CSV'
        },
        {
            extend:    'pdfHtml5',
            text:      'Exportar PDF <i class="fa fa-file-pdf-o fa-3x" style="margin-right:20px;"></i>',
            titleAttr: 'PDF'
        }
    ])
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
