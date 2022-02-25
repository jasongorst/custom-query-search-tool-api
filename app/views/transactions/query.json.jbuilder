json.key_format! camelize: :lower

json.array! @transactions, partial: "transactions/transaction", as: :transaction
