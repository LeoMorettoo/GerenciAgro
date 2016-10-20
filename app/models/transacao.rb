class Transacao < ApplicationRecord
  belongs_to :cliente
  belongs_to :fornecedor
  belongs_to :centro_custo
end
