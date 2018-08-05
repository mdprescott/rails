class FixStoreIdInOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :store_id_id
  end
end
