class MerchantFacade
  def self.service
    MerchantService.new
  end

  def self.get_all_merchants
    results = service.get_merchants
    create_merchants(results)
  end

  def self.create_merchants(results)
    results[:data].map do |merchant|
      Merchant.new(id: merchant[:id].to_i, name: merchant[:attributes][:name])
    end
  end

  def self.get_a_merchant(merchant_id)
    results = service.call_for_a_merchant(merchant_id)
    create_a_merchant(results)
  end

  def self.get_all_items(merchant_id)
    results = service.call_for_items(merchant_id)
    create_items(results)
  end

  def self.create_a_merchant(results)
     Merchant.new(id: results[:data][:id].to_i, name: results[:data][:attributes][:name])
  end

  def self.create_items(results)
     results[:data].map do |item|
       Item.new(id: item[:id].to_i, name: item[:attributes][:name])
     end
  end 
end
