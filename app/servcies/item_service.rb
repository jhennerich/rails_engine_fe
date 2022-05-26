class ItemService < ApplicationService
  def get_all_items
    parse_json(conn.get('items'))
  end

  def call_for_an_item(item_id)
    response = conn.get("items/#{item_id}")
    parse_json(response)
  end
end
