# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161113163133) do

  create_table "conta", force: :cascade do |t|
    t.string   "nome",         limit: 50
    t.string   "status",       limit: 20
    t.datetime "data_criacao"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "pai_id",       limit: 4
  end

  create_table "fisica", force: :cascade do |t|
    t.string   "CPF",             limit: 11
    t.datetime "data_nascimento"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "juridica", force: :cascade do |t|
    t.string   "CNPJ",         limit: 14
    t.string   "razao_social", limit: 70
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "pessoa", force: :cascade do |t|
    t.string   "nome",       limit: 50
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
