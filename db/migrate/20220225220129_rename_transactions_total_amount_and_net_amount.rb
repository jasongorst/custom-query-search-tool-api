class RenameTransactionsTotalAmountAndNetAmount < ActiveRecord::Migration[7.0]
  def change
    rename_column :transactions, :transaction_total_amount, :total_amount
    rename_column :transactions, :transaction_net_amount, :net_amount
  end
end
