class Item
  attr_reader :id, :type, :name, :description, :unit_price
  
  def initialize(data)
    @id = data[:id]
    @type = data[:id]
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
    @unit_price = data[:attributes][:unit_price]
  end
end