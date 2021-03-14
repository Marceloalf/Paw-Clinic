# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  Responsavel.create!(
    nome: "Nome #{i}",
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
    nome: "Nome #{i}",
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
    nome: "Nome #{i}",
    especie: "Cachorro",
    raca: "",
    complicacoes: "Nenhuma",
    idade: Date.today,
    responsavel: Responsavel.find_by_nome("Nome #{i}")
  )
end

User.create!(
  email: "admin@admin.com",
  password: "123456",
  tipo_usuario: "admin"
)
