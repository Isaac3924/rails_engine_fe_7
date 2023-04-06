class RailsEngineService
  def merchants
    get_url("merchants")
  end

  def items(merchant_id)
    get_url("merchants/#{merchant_id}/items")
  end

  private

  def get_url(url)
    response = connection.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def connection
    Faraday.new(url: "http://localhost:3000/api/v1")
  end
end