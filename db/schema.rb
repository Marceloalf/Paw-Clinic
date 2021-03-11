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

ActiveRecord::Schema.define(version: 2021_03_11_145927) do

  create_table "animals", force: :cascade do |t|
    t.string "nome"
    t.string "especie"
    t.string "raca"
    t.string "complicacoes"
    t.string "sexo"
    t.integer "responsavel_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "idade"
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
    t.string "sexo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.date "data_nascimento"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tipo_usuario", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "veterinarios", force: :cascade do |t|
    t.string "nome"
    t.string "sexo"
    t.string "cpf"
    t.string "crmv"
    t.string "telefone"
    t.string "especialidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "data_nascimento"
  end

end
