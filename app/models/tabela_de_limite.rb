class TabelaDeLimite < ApplicationRecord
  belongs_to :imposto, inverse_of: :tabela_de_limites
end
