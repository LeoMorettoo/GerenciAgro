class CreateTabelaDeLimites < ActiveRecord::Migration[5.0]
  def change
    create_table :tabela_de_limites do |t|
      t.float :limite_inferior
      t.float :limite_superior
      t.float :aliquota
      t.references :imposto, foreign_key: true

      t.timestamps
    end
  end
end
