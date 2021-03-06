# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_10_215628) do

  create_table "clientes", force: :cascade do |t|
    t.string "email"
    t.string "nome"
    t.string "sobrenome"
    t.string "tel"
    t.string "endereco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_clientes_on_email", unique: true
  end

  create_table "dogs", force: :cascade do |t|
    t.integer "cliente_id", null: false
    t.string "nome"
    t.string "raca"
    t.string "genero"
    t.integer "idade"
    t.string "porte"
    t.boolean "castrado"
    t.boolean "raiva"
    t.boolean "vacinas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_dogs_on_cliente_id"
  end

  create_table "passeadores", force: :cascade do |t|
    t.string "email"
    t.string "nome"
    t.string "sobrenome"
    t.string "tel"
    t.string "bairro"
    t.integer "preco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_passeadores_on_email", unique: true
  end

  add_foreign_key "dogs", "clientes"
end
