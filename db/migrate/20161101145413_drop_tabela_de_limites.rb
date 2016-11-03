class DropTabelaDeLimites < ActiveRecord::Migration[5.0]
  def change
    drop_table :tabela_de_limites
  end
end
