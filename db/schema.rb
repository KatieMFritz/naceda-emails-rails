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

ActiveRecord::Schema.define(version: 20160415181224) do

  create_table "announcements", force: :cascade do |t|
    t.string   "subject",     default: "", null: false
    t.date     "date"
    t.string   "sender"
    t.string   "teaser_text"
    t.string   "headline"
    t.string   "author"
    t.text     "story"
    t.string   "image_link"
    t.string   "story_link"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "newsletters", force: :cascade do |t|
    t.string   "subject"
    t.string   "date"
    t.string   "sender"
    t.string   "teaser_text"
    t.text     "naceda_news"
    t.text     "member_news"
    t.text     "federal_news"
    t.text     "partner_news"
    t.text     "naceda_events"
    t.text     "member_events"
    t.text     "federal_events"
    t.text     "partner_events"
    t.text     "jobs"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "resources"
  end

end
