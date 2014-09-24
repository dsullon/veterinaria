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

ActiveRecord::Schema.define(version: 20140924055357) do

  create_table "breeds", force: true do |t|
    t.string   "breedId"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pets", force: true do |t|
    t.integer  "petId"
    t.integer  "user_id"
    t.string   "name"
    t.float    "weight"
    t.float    "height"
    t.string   "gender"
    t.datetime "datebirth"
    t.integer  "specie_id"
    t.integer  "breed_id"
    t.string   "otherDetails"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pets", ["breed_id"], name: "index_pets_on_breed_id"
  add_index "pets", ["specie_id"], name: "index_pets_on_specie_id"
  add_index "pets", ["user_id"], name: "index_pets_on_user_id"

  create_table "species", force: true do |t|
    t.integer  "specieId"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "userId"
    t.string   "userName"
    t.string   "name"
    t.string   "lastName"
    t.string   "password"
    t.string   "address"
    t.string   "phone"
    t.string   "mobilePhone"
    t.string   "email"
    t.string   "userType"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
