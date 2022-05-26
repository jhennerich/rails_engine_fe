class MerchantService
  def conn
    Faraday.new(url: 'http://localhost:3000/api/v1') do |faraday|
#      faraday.params['api_key'] = ENV['tmdb_key']
    end
  end

  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_merchants
    parse_json(conn.get('merchants'))
  end

  def call_for_a_merchant(merchant_id)
     response = conn.get("merchants/#{merchant_id}")
     parse_json(response)
   end

   def call_for_items(merchant_id)
     response = conn.get("merchants/#{merchant_id}/items")
     parse_json(response)
   end
end
