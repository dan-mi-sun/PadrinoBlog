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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 9) do

  create_table "authors", :force => true do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.text     "location"
    t.text     "email"
    t.text     "website"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.integer  "comment_id"
    t.text     "posted_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
    t.integer  "author_id"
  end

  create_table "post_tags", :force => true do |t|
    t.integer  "post_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.integer  "author_id"
    t.text     "title"
    t.integer  "post_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  create_table "tags", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
