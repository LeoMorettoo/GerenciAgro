json.extract! transacao, :id, :cliente_id, :fornecedor_id, :centro_custo, :valor, :created_at, :updated_at
json.url transacao_url(transacao, format: :json)