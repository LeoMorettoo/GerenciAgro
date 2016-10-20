class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :cpf
      t.string :cnpj
      t.string :tipo_conta
      t.string :conta

      t.timestamps
    end
  end
end
