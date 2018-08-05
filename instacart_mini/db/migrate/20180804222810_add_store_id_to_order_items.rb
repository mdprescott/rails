class AddStoreIdToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :store_id, foreign_key: true
  end
end
