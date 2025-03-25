class StocksController < ApplicationController
  def index
    @stock_data = FinnhubService.fetch_stock("AAPL")
    Rails.logger.info "Stock Data: #{@stock_data}"
  end
end
