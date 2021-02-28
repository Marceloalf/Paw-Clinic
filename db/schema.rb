# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_25_023832) do

  create_table "animals", force: :cascade do |t|
    t.string "nome"
    t.string "especie"
    t.string "raca"
    t.string "complicacoes"
    t.integer "idade"
    t.string "sexo"
    t.integer "responsavel_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consulta", force: :cascade do |t|
    t.datetime "data"
    t.string "sintomas"
    t.string "prescricao"
    t.datetime "deleted_at"
    t.integer "veterinario_id"
    t.integer "animal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "responsavels", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "telefone"
    t.integer "idade"
    t.string "sexo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "veterinarios", force: :cascade do |t|
    t.string "nome"
    t.integer "idade"
    t.string "sexo"
    t.string "cpf"
    t.string "crmv"
    t.string "telefone"
    t.string "especialidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
