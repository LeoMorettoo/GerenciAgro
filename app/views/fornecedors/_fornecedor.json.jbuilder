json.extract! fornecedor, :id, :nome, :endereco, :cpf, :cnpj, :tipo_conta, :conta, :created_at, :updated_at
json.url fornecedor_url(fornecedor, format: :json)