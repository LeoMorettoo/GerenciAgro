class AddTituloToImpostos < ActiveRecord::Migration[5.0]
  def change
    add_column :impostos, :titulo, :string
  end
end
