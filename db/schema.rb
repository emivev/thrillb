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

ActiveRecord::Schema.define(:version => 20120910161715) do

  create_table "accomodations", :force => true do |t|
    t.integer   "trip_id"
    t.string    "name"
    t.text      "description"
    t.string    "price1"
    t.string    "price2"
    t.string    "price3"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "budgets", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "categories", ["slug"], :name => "index_categories_on_slug"

  create_table "categories_locations", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "location_id"
  end

  create_table "categories_trips", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "trip_id"
  end

  create_table "continents", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "details", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "details_trips", :id => false, :force => true do |t|
    t.integer "detail_id"
    t.integer "trip_id"
  end

  create_table "extras", :force => true do |t|
    t.string    "name"
    t.text      "description"
    t.string    "price1"
    t.string    "price2"
    t.string    "price3"
    t.string    "price4"
    t.string    "price5"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "trip_id"
  end

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "images", :force => true do |t|
    t.string    "image_file_name"
    t.string    "image_content_type"
    t.integer   "image_file_size"
    t.timestamp "image_updated_at"
    t.integer   "trip_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "title"
    t.integer   "location_id"
  end

  create_table "lessons", :force => true do |t|
    t.integer   "trip_id"
    t.string    "name"
    t.text      "description"
    t.string    "price1"
    t.string    "price2"
    t.string    "price3"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "country"
    t.integer   "continent_id"
    t.string    "slug"
  end

  add_index "locations", ["slug"], :name => "index_locations_on_slug"

  create_table "messages", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "subject"
    t.text      "body"
    t.integer   "trip_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "messages", ["trip_id"], :name => "index_messages_on_trip_id"

  create_table "packages", :force => true do |t|
    t.string    "name"
    t.text      "description"
    t.string    "price1"
    t.string    "price2"
    t.string    "price3"
    t.string    "price4"
    t.string    "price5"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "trip_id"
  end

  create_table "reviews", :force => true do |t|
    t.integer   "trip_id"
    t.text      "content"
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "trips", :force => true do |t|
    t.string   "title"
    t.string   "price"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
    t.string   "url"
    t.integer  "continent_id"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.string   "vimeo"
    t.string   "youtube"
    t.string   "facebook"
    t.string   "twitter"
    t.text     "directions"
    t.text     "conditions"
    t.string   "spot"
    t.integer  "budget_id"
    t.string   "slug"
  end

  add_index "trips", ["slug"], :name => "index_trips_on_slug"

  create_table "trips_types", :id => false, :force => true do |t|
    t.integer "trip_id"
    t.integer "type_id"
  end

  create_table "types", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "encrypted_password"
    t.string    "salt"
    t.boolean   "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
