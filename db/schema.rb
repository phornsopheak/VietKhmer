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

ActiveRecord::Schema.define(version: 20161114040426) do

  create_table "articles", force: :cascade do |t|
    t.string   "vn_title",   limit: 255
    t.string   "kh_title",   limit: 255
    t.text     "vn_article", limit: 65535
    t.text     "kh_article", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "examples", force: :cascade do |t|
    t.string  "vn_example", limit: 255
    t.string  "kh_example", limit: 255
    t.string  "picture",    limit: 255
    t.integer "meaning_id", limit: 4
  end

  add_index "examples", ["meaning_id"], name: "index_examples_on_meaning_id", using: :btree

  create_table "meanings", force: :cascade do |t|
    t.text     "meaning",    limit: 65535
    t.string   "picture",    limit: 255
    t.boolean  "isIdiom",                  default: false
    t.integer  "word_id",    limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "meanings", ["word_id"], name: "index_meanings_on_word_id", using: :btree

  create_table "word_articles", force: :cascade do |t|
    t.integer  "word_id",    limit: 4
    t.integer  "article_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "word_articles", ["article_id"], name: "index_word_articles_on_article_id", using: :btree
  add_index "word_articles", ["word_id"], name: "index_word_articles_on_word_id", using: :btree

  create_table "words", force: :cascade do |t|
    t.string   "word",       limit: 255
    t.boolean  "isIdiom",                default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_foreign_key "examples", "meanings"
  add_foreign_key "meanings", "words"
  add_foreign_key "word_articles", "articles"
  add_foreign_key "word_articles", "words"
end
