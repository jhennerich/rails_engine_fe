class MerchantService < ApplicationService
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
