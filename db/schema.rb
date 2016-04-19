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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160415002132) do
=======
ActiveRecord::Schema.define(version: 20160418001547) do
>>>>>>> 811f1c0aab11fed685d6cefba792483b89fde960

  create_table "authors", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
  end

  create_table "authors_books", id: false, force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id",   null: false
  end

  create_table "books", force: :cascade do |t|
    t.string  "isbn"
    t.string  "title"
    t.text    "description"
    t.binary  "thumbnail"
    t.integer "publisher_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string   "title"
    t.string   "isbn"
    t.decimal  "price"
    t.text     "description"
    t.boolean  "is_hardcover"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zipcode"
  end

  create_table "sell_listings", force: :cascade do |t|
    t.decimal  "price"
    t.integer  "condition"
    t.text     "notes"
    t.integer  "book_id"
    t.boolean  "is_hardcover"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.boolean  "email_verified"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "access_token"
    t.string   "uid"
    t.string   "twitter_secret"
  end

end
