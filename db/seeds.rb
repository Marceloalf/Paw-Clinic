# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arr_res = %w[João Marcos Lucas Matheus Gabriel Rodrigo Matias Maria Quelma Leonardo]
arr_vet = %w[Quemia Bezerra Amanda Santiago Gabriel Roberta Roberto Jennifer Marina Kened]
arr_pet = %w[Cristal Rex Fluffy Yin Yang Spirit Garfield Pest Gab Stuart]

especies = %w[Gato Cachorro Coelho Papagaio]

10.times do |i|
  Responsavel.create!(
    nome: arr_res[i],
    cpf: "#{i}",
    telefone: "32222121",
    data_nascimento: Date.today,
    sexo: "Não identificado",
    user: User.new(
      email: "res-#{i}@email.com",
      password: "123456",
      tipo_usuario: "responsavel"
    )
  )
end

10.times do |i|
  Veterinario.create!(
    nome: arr_vet[i],
    sexo: "Não identificado",
    cpf: "234234#{i}",
    crmv: "123123#{i}",
    telefone: "123123",
    especialidade: "Estomago",
    data_nascimento: Date.today,
    user: User.new(
      email: "vet-#{i}@email.com",
      password: "123456",
      tipo_usuario: "veterinario"
    )
  )
end

10.times do |i|
  Animal.create!(
    nome: arr_pet[i],
    especie: especies[rand(10)],
    raca: "Não identificado",
    complicacoes: "Nenhuma",
    data_nascimento: Date.today,
    sexo: "Não identificado",
    responsavel: Responsavel.find_by_nome(arr_res[i])
  )
end

User.create!(
  email: "admin@admin.com",
  password: "123456",
  tipo_usuario: "admin"
)
