class CreateImpostos < ActiveRecord::Migration[5.0]
  def change
    create_table :impostos do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
