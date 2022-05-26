class Merchant
  attr_reader :name,
              :id

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
  end
end 
