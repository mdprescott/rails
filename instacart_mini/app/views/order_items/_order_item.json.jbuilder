json.extract! order_item, :id, :cart_id, :product_id, :quantity, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)