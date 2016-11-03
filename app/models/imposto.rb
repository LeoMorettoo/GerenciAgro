class Imposto < ApplicationRecord
  has_many :tabela_de_limites, inverse_of: :imposto, dependent: :destroy

  accepts_nested_attributes_for :tabela_de_limites, allow_destroy: true, reject_if: :all_blank
end
