json.extract! animal, :id, :nome, :especie, :raca, :complicacoes, :idade, :sexo, :created_at, :updated_at
json.url animal_url(animal, format: :json)
