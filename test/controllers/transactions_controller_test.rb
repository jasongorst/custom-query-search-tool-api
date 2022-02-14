require "test_helper"

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction = transactions(:one)
  end

  # test "should get index" do
  #   get transactions_url, as: :json
  #   assert_response :success
  # end
  #
  # test "should create transaction" do
  #   assert_difference("Transaction.count") do
  #     post transactions_url, params: { transaction: { beverage_qty: @transaction.beverage_qty, bus_dt: @transaction.bus_dt, discount_amount: @transaction.discount_amount, discount_ratio: @transaction.discount_ratio, item_deleted_amount: @transaction.item_deleted_amount, item_sold_qty: @transaction.item_sold_qty, order_number: @transaction.order_number, order_time: @transaction.order_time, refund_amount: @transaction.refund_amount, restaurant_id: @transaction.restaurant_id, transaction_net_amount: @transaction.transaction_net_amount, transaction_total_amount: @transaction.transaction_total_amount } }, as: :json
  #   end
  #
  #   assert_response :created
  # end
  #
  # test "should show transaction" do
  #   get transaction_url(@transaction), as: :json
  #   assert_response :success
  # end
  #
  # test "should update transaction" do
  #   patch transaction_url(@transaction), params: { transaction: { beverage_qty: @transaction.beverage_qty, bus_dt: @transaction.bus_dt, discount_amount: @transaction.discount_amount, discount_ratio: @transaction.discount_ratio, item_deleted_amount: @transaction.item_deleted_amount, item_sold_qty: @transaction.item_sold_qty, order_number: @transaction.order_number, order_time: @transaction.order_time, refund_amount: @transaction.refund_amount, restaurant_id: @transaction.restaurant_id, transaction_net_amount: @transaction.transaction_net_amount, transaction_total_amount: @transaction.transaction_total_amount } }, as: :json
  #   assert_response :success
  # end
  #
  # test "should destroy transaction" do
  #   assert_difference("Transaction.count", -1) do
  #     delete transaction_url(@transaction), as: :json
  #   end
  #
  #   assert_response :no_content
  # end
end
