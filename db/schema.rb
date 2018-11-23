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

ActiveRecord::Schema.define(version: 2018_11_21_020335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodations_conveniences", id: false, force: :cascade do |t|
    t.bigint "accommodation_id", null: false
    t.bigint "convenience_id", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "dailies", force: :cascade do |t|
    t.datetime "date_daily"
    t.bigint "school_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_class_id"], name: "index_dailies_on_school_class_id"
  end

  create_table "periods", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "quantity_stock"
    t.decimal "amount"
    t.bigint "product_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.datetime "date"
    t.decimal "quantity"
    t.datetime "date_purchase"
    t.string "invoice_number"
    t.string "invoice_cnpj"
    t.decimal "unitary_value"
    t.decimal "total_quantity"
    t.decimal "amount"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_purchases_on_product_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "sales", force: :cascade do |t|
    t.datetime "date_sale"
    t.decimal "unitary_value"
    t.decimal "total_quantity"
    t.decimal "amount"
    t.string "cpf"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_sales_on_product_id"
  end

  create_table "school_attendances", force: :cascade do |t|
    t.boolean "presence"
    t.bigint "student_id"
    t.bigint "daily_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daily_id"], name: "index_school_attendances_on_daily_id"
    t.index ["student_id"], name: "index_school_attendances_on_student_id"
  end

  create_table "school_classes", force: :cascade do |t|
    t.string "description"
    t.bigint "period_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["period_id"], name: "index_school_classes_on_period_id"
    t.index ["teacher_id"], name: "index_school_classes_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "birth"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.bigint "school_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "type_student_id"
    t.index ["school_class_id"], name: "index_students_on_school_class_id"
    t.index ["type_student_id"], name: "index_students_on_type_student_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.datetime "birth"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "dailies", "school_classes"
  add_foreign_key "products", "product_categories"
  add_foreign_key "purchases", "products"
  add_foreign_key "sales", "products"
  add_foreign_key "school_attendances", "dailies"
  add_foreign_key "school_attendances", "students"
  add_foreign_key "school_classes", "periods"
  add_foreign_key "school_classes", "teachers"
  add_foreign_key "students", "school_classes"
  add_foreign_key "students", "type_students"
end
