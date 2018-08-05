class AddCorrectNameStoreIdToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :store, foreign_key: true
  end
end
