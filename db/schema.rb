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

ActiveRecord::Schema.define(version: 2022_09_10_074151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.string "author"
    t.integer "published_year"
    t.bigint "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "quantity"
    t.index ["title", "author"], name: "index_books_on_title_and_author", unique: true
  end

  create_table "buyed_books", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "book_id"
    t.bigint "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_buyed_books_on_book_id"
    t.index ["user_id", "book_id"], name: "index_buyed_books_on_user_id_and_book_id", unique: true
    t.index ["user_id"], name: "index_buyed_books_on_user_id"
  end

  create_table "reviewed_books", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "book_id"
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_reviewed_books_on_book_id"
    t.index ["user_id"], name: "index_reviewed_books_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "full_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

  add_foreign_key "buyed_books", "books"
  add_foreign_key "buyed_books", "users"
  add_foreign_key "reviewed_books", "books"
  add_foreign_key "reviewed_books", "users"
end
