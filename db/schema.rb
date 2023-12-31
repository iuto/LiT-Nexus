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

ActiveRecord::Schema.define(version: 2023_09_16_061910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mypage", force: :cascade do |t|
    t.string "myoageImg", null: false
    t.string "course", null: false
    t.string "mypageClass", null: false
    t.string "attribute", null: false
    t.string "mypageUsers", null: false
  end

  create_table "portfolio", force: :cascade do |t|
    t.string "title", null: false
    t.string "url", null: false
    t.string "detail", null: false
    t.string "portfolioImg", null: false
    t.string "postPortfolio", null: false
  end

  create_table "postData", force: :cascade do |t|
    t.string "text", null: false
    t.string "tag", null: false
    t.string "postImg", null: false
    t.string "postUsers", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "mail", null: false
    t.string "password_digest", null: false
  end

end
