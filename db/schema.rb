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

ActiveRecord::Schema.define(:version => 20130202222659) do

  create_table "boards", :force => true do |t|
    t.datetime "created_at",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          :null => false
    t.datetime "updated_at",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          :null => false
    t.integer  "height",                     :default => 10
    t.integer  "width",                      :default => 10
    t.text     "data",       :limit => 1000, :default => "[[null,null,null,null,null,null,null,null,null,null],[null,null,null,null,null,null,null,null,null,null],[null,null,null,null,null,null,null,null,null,null],[null,null,null,null,null,null,null,null,null,null],[null,null,null,null,null,null,null,null,null,null],[null,null,null,null,null,null,null,null,null,null],[null,null,null,null,null,null,null,null,null,null],[null,null,null,null,null,null,null,null,null,null],[null,null,null,null,null,null,null,null,null,null],[null,null,null,null,null,null,null,null,null,null]]"
    t.integer  "player"
    t.integer  "game_id"
  end

  create_table "games", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "winner"
    t.integer  "status"
  end

  create_table "ships", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "type"
    t.string   "start"
    t.string   "orientation"
    t.integer  "length"
    t.integer  "board_id"
  end

  create_table "shots", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "hit"
    t.integer  "x"
    t.integer  "y"
    t.integer  "player"
    t.integer  "board_id"
  end

end
