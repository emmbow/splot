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

ActiveRecord::Schema.define(version: 2019_12_23_174852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "placings", force: :cascade do |t|
    t.bigint "plot_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plot_id"], name: "index_placings_on_plot_id"
    t.index ["user_id"], name: "index_placings_on_user_id"
  end

  create_table "plots", force: :cascade do |t|
    t.bigint "site_id"
    t.string "size"
    t.string "number_of_growers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "soil_type"
    t.string "plot_number"
    t.text "image_url"
    t.index ["site_id"], name: "index_plots_on_site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "address"
    t.integer "number_of_plots"
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "placings", "plots"
  add_foreign_key "placings", "users"
  add_foreign_key "plots", "sites"
end
