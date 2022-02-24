class ChangeTransactionsOrderTimeToDatetime < ActiveRecord::Migration[7.0]
  def change
    change_column :transactions, :order_time, :datetime
  end
end
