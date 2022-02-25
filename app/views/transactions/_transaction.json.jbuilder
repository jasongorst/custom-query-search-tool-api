json.key_format! camelize: :lower

json.extract! transaction, :restaurant_id
json.bus_dt transaction.bus_dt.strftime('%FT%T')
json.extract! transaction, :order_number
json.order_time transaction.order_time.strftime('%FT%T')
json.total_amount transaction.total_amount.to_f
json.net_amount transaction.net_amount.to_f
json.extract! transaction, :item_sold_qty, :beverage_qty
json.discount_amount transaction.discount_amount.to_f
json.item_deleted_amount transaction.item_deleted_amount.to_f
json.discount_ratio transaction.discount_ratio.to_f
json.refund_amount transaction.refund_amount.to_f
