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

ActiveRecord::Schema.define(version: 20140413005137) do

  create_table "centros", force: true do |t|
    t.string   "nombre"
    t.float    "longitud"
    t.float    "latitud"
    t.string   "tipo"
    t.text     "horario"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "usuario_id"
  end

  create_table "tipo_centros", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "administrador"
    t.string   "token_app_movil"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["remember_token"], name: "index_usuarios_on_remember_token"
  add_index "usuarios", ["token_app_movil"], name: "index_usuarios_on_token_app_movil"

end
