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

ActiveRecord::Schema.define(version: 20150630190647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "cities", force: :cascade do |t|
    t.string  "name"
    t.integer "number_of_jobs"
    t.hstore  "frequency",      default: {"c#"=>"0", "c++"=>"0", "php"=>"0", "java"=>"0", "ruby"=>"0", "scala"=>"0", "python"=>"0", "javascript"=>"0", "objective-c"=>"0"}
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "location",    null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
