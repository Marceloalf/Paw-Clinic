json.extract! veterinario, :id, :nome, :cpf, :crmv, :telefone, :especialidade, :created_at, :updated_at
json.url veterinario_url(veterinario, format: :json)
