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

ActiveRecord::Schema.define(version: 20181112182012) do

  create_table "adms", force: :cascade do |t|
    t.string "nombre"
    t.string "ubicacion"
    t.integer "canthabitaciones"
    t.boolean "disponibilidad"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string "nombre"
    t.string "ubicacion"
    t.integer "cant_habitaciones"
    t.boolean "disponibilidad"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subasta", force: :cascade do |t|
    t.date "fechainicio"
    t.text "descripcion"
    t.string "titulo"
    t.integer "idreserva"
    t.integer "idganador"
    t.integer "pujamax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
