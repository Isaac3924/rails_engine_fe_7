class Merchant
  attr_reader :id, :type, :name
  
  def initialize(data)
    @id = data[:id]
    @type = data[:id]
    @name = data[:attributes][:name]
  end
end