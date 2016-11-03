# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161101145457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "centro_custos", force: :cascade do |t|
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cpf"
    t.string   "cnpj"
    t.string   "tipo_conta"
    t.string   "conta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cpf"
    t.string   "cnpj"
    t.string   "tipo_conta"
    t.string   "conta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impostos", force: :cascade do |t|
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "titulo"
  end

  create_table "tabela_de_limites", force: :cascade do |t|
    t.float    "limite_inferior"
    t.float    "limite_superior"
    t.float    "aliquota"
    t.integer  "imposto_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["imposto_id"], name: "index_tabela_de_limites_on_imposto_id", using: :btree
  end

  create_table "transacaos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.integer  "fornecedor_id"
    t.integer  "centro_custo_id"
    t.float    "valor"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["centro_custo_id"], name: "index_transacaos_on_centro_custo_id", using: :btree
    t.index ["cliente_id"], name: "index_transacaos_on_cliente_id", using: :btree
    t.index ["fornecedor_id"], name: "index_transacaos_on_fornecedor_id", using: :btree
  end

  add_foreign_key "tabela_de_limites", "impostos"
  add_foreign_key "transacaos", "clientes"
  add_foreign_key "transacaos", "fornecedors"
end
