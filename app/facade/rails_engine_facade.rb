class RailsEngineFacade
  def initialize
    @service = service
  end

  def merchants
    @service.merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def all_items
    @service.all_items[:data].map do |item|
      Item.new(item)
    end
  end
  
  def items(merchant_id)
    @service.items(merchant_id)[:data].map do |item|
      Item.new(item)
    end
  end

  private
  def service
    @service ||= RailsEngineService.new
  end
end