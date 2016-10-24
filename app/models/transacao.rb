class Transacao < ApplicationRecord
  belongs_to :cliente, optional: true
  belongs_to :fornecedor, optional: true
  belongs_to :centro_custo
end
