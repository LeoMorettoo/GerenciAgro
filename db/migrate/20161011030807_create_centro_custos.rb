class CreateCentroCustos < ActiveRecord::Migration[5.0]
  def change
    create_table :centro_custos do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
