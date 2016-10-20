
class HomeController < ApplicationController
  def index
    @custos_total = CentroCusto.all.count
    @clientes_total = Cliente.all.count
    @fornecedores_total = Fornecedor.all.count
    @impostos_total = Imposto.all.count
    @transacoes_total = Transacao.all.count
  end
end
