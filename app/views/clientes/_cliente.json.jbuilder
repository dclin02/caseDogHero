json.extract! cliente, :id, :email, :nome, :sobrenome, :tel, :endereco, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
