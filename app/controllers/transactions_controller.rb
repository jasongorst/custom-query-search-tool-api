require 'constants'

class TransactionsController < ApplicationController
  # GET /Search/Test
  def test
    render json: 'API status - OK!', status: :ok
  end

  # GET /Search/MetricDefinitions
  def metric_definitions
    render json: Constants::METRIC_DEFINITIONS, status: :ok
  end

  # POST /Search/Query
  def query
    from = combine_date_and_hour(params['fromDate'], params['fromHour'])
    to = combine_date_and_hour(params['toDate'], params['toHour'])
    metric_criteria = parse_metric_criteria(params['metricCriteria'])

    @transactions = Transaction.where(restaurant_id: params['restaurantIds'])
                               .where(order_time: from..to)
                               .where(metric_criteria)
                               .order(:order_time)
  end

  private

  def combine_date_and_hour(date, hour)
    Date.parse(date) + hour.hours
  end

  def parse_metric_criteria(metric_criteria)
    metric_criteria.map do |criteria|
      field = criteria['metricCode'].underscore
      comparison = Constants::COMPARE_OPTIONS[criteria['compareType']]
      value = criteria['value']

      [field, comparison, value].join(' ')
    end.join(' AND ')
  end

  # Only allow a list of trusted parameters through.
  def transaction_params
    params.require(:transaction)
          .permit(:restaurant_id, :bus_dt, :order_number, :order_time,
                  :transaction_total_amount, :transaction_net_amount,
                  :item_sold_qty, :beverage_qty, :discount_amount,
                  :item_deleted_amount, :discount_ratio, :refund_amount)
  end
end
