class TransactionsController < ApplicationController

  METRIC_DEFINITIONS = [
    {
      metricCode: 'TotalAmount',
      alias: 'Transaction Total Amount $',
      dataType: 'Money',
      decimalPlaces: 2
    },
    {
      metricCode: 'NetAmount',
      alias: 'Transaction Net Amount $',
      dataType: 'Money',
      decimalPlaces: 2
    },
    {
      metricCode: 'ItemSoldQty',
      alias: 'Items Sold #',
      dataType: 'Number',
      decimalPlaces: 0
    },
    {
      metricCode: 'BeverageQty',
      alias: 'Beverages Sold #',
      dataType: 'Number',
      decimalPlaces: 0
    },
    {
      metricCode: 'DiscountAmount',
      alias: 'Transaction Discount Amount $',
      dataType: 'Money',
      decimalPlaces: 2
    },
    {
      metricCode: 'DiscountRatio',
      alias: 'Transaction Discount Ratio %',
      dataType: 'Percent',
      decimalPlaces: 2
    },
    {
      metricCode: 'ItemDeletedAmount',
      alias: 'Item Deleted Amount $',
      dataType: 'Money',
      decimalPlaces: 2
    },
    {
      metricCode: 'RefundAmount',
      alias: 'Transaction Refund Amount $',
      dataType: 'Money',
      decimalPlaces: 2
    }
  ].freeze

  # GET /Search/Test
  def test
    render json: 'API status - OK!', status: :ok
  end

  # GET /Search/MetricDefinitions
  def metric_definitions
    render json: METRIC_DEFINITIONS, status: :ok
  end

  # POST /Search/Query
  def query

  end

  private

  # Only allow a list of trusted parameters through.
  def transaction_params
    params.require(:transaction).permit(:restaurant_id, :bus_dt, :order_number, :order_time, :transaction_total_amount, :transaction_net_amount, :item_sold_qty, :beverage_qty, :discount_amount, :item_deleted_amount, :discount_ratio, :refund_amount)
  end
end
