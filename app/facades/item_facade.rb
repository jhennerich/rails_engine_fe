class ItemFacade
  def self.service
    ItemService.new
  end

  def self.get_all_items
    results = service.get_all_items
    create_items(results)
  end

  def self.create_items(results)
    results[:data].map do |item|
      Item.new(id: item[:id].to_i,
               name: item[:attributes][:name],
               description: item[:attributes][:description],
               unit_price: item[:attributes][:unit_price]
             )
    end
  end

  def self.get_an_item(item_id)
    results = service.call_for_an_item(item_id)
    create_an_item(results[:data])
  end

  def self.create_an_item(item)
      Item.new(id: item[:id].to_i,
               name: item[:attributes][:name],
               description: item[:attributes][:description],
               unit_price: item[:attributes][:unit_price]
             )
  end
end
