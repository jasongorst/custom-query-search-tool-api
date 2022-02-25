# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_02_25_220129) do
  create_table "transactions", charset: "utf8mb4", force: :cascade do |t|
    t.integer "restaurant_id"
    t.date "bus_dt"
    t.integer "order_number"
    t.datetime "order_time", precision: nil
    t.decimal "total_amount", precision: 10, scale: 2
    t.decimal "net_amount", precision: 10, scale: 2
    t.integer "item_sold_qty"
    t.integer "beverage_qty"
    t.decimal "discount_amount", precision: 10, scale: 2
    t.decimal "item_deleted_amount", precision: 10, scale: 2
    t.float "discount_ratio"
    t.decimal "refund_amount", precision: 10, scale: 2
  end

end
