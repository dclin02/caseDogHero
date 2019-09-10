json.extract! dog, :id, :cliente_id, :nome, :raca, :genero, :idade, :porte, :castrado, :raiva, :vacinas, :created_at, :updated_at
json.url dog_url(dog, format: :json)
