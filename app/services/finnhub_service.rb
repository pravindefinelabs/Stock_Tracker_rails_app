require "net/http"
require "json"

class FinnhubService
  BASE_URL = "https://finnhub.io/api/v1"
  API_KEY = "cvgs2qpr01qi76d4umngcvgs2qpr01qi76d4umo0"

  def self.fetch_stock(symbol)
    url = URI("#{BASE_URL}/quote?symbol=#{symbol}&token=#{API_KEY}")
    response = Net::HTTP.get(url)
    JSON.parse(response)
  rescue => e
    Rails.logger.error "Error fetching stock data: #{e.message}"
    nil
  end
end
