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

ActiveRecord::Schema.define(version: 20140324221659) do

  create_table "add_title_to_employees", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "default_office_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true
  add_index "employees", ["invitation_token"], name: "index_employees_on_invitation_token", unique: true
  add_index "employees", ["invitations_count"], name: "index_employees_on_invitations_count"
  add_index "employees", ["invited_by_id"], name: "index_employees_on_invited_by_id"
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true

  create_table "offices", force: true do |t|
    t.string   "office_name"
    t.string   "geoinfo"
    t.string   "geofence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_selects", force: true do |t|
    t.string   "status"
    t.string   "status_type"
    t.integer  "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.boolean  "in_out"
    t.boolean  "on_off"
    t.integer  "status_select_id"
    t.string   "current_location"
    t.datetime "return"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
