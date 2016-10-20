class CreateTransacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :transacaos do |t|
      t.references :cliente, foreign_key: true, null: true
      t.references :fornecedor, foreign_key: true, null: true
      t.references :centro_custo
      t.float :valor

      t.timestamps
    end
  end
end
