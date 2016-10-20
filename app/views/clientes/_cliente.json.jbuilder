json.extract! cliente, :id, :nome, :endereco, :cpf, :cnpj, :tipo_conta, :conta, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)