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

ActiveRecord::Schema.define(version: 20150909060723) do

  create_table "comments", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.string   "username",   limit: 255
    t.string   "email",      limit: 255
    t.integer  "issue_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: :cascade do |t|
    t.string   "slack_notification_webhook_url",                 limit: 255
    t.string   "slack_notification_username",                    limit: 255
    t.string   "slack_accident_record_notification_webhook_url", limit: 255
    t.string   "slack_accident_record_notification_channel",     limit: 255
    t.string   "slack_accident_record_notification_username",    limit: 255
    t.string   "slack_exception_notification_webhook_url",       limit: 255
    t.string   "slack_exception_notification_channel",           limit: 255
    t.string   "slack_exception_notification_username",          limit: 255
    t.string   "admin_ticket_access_token",                      limit: 255
    t.string   "admin_ticket_expires_in",                        limit: 255
    t.string   "admin_ticket_refresh_token",                     limit: 255
    t.string   "admin_ticket_updated_at",                        limit: 255
    t.string   "sync_qiniu_develop_time",                        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
