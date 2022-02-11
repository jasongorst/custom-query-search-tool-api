class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :restaurant_id
      t.date :bus_dt
      t.integer :order_number
      t.time :order_time
      t.decimal :transaction_total_amount, precision: 10, scale: 2
      t.decimal :transaction_net_amount, precision: 10, scale: 2
      t.integer :item_sold_qty
      t.integer :beverage_qty
      t.decimal :discount_amount, precision: 10, scale: 2
      t.decimal :item_deleted_amount, precision: 10, scale: 2
      t.float :discount_ratio
      t.decimal :refund_amount, precision: 10, scale: 2
    end
  end
end
