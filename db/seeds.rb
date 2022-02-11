# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

CSV.foreach(Rails.root.join('db/TransactionData.csv'), headers: true) do |row|
  Transaction.create(
    {
      restaurant_id: row[0],
      bus_dt: Date.strptime(row[1], '%m/%d/%Y'),
      order_number: row[2],
      order_time: row[3],
      transaction_total_amount: row[4],
      transaction_net_amount: row[5],
      item_sold_qty: row[6],
      beverage_qty: row[7],
      discount_amount: row[8],
      item_deleted_amount: row[9],
      discount_ratio: row[10],
      refund_amount: row[11]
    }
  )
end
