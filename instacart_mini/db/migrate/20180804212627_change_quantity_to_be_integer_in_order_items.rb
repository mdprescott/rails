class ChangeQuantityToBeIntegerInOrderItems < ActiveRecord::Migration[5.2]
  def up
    change_column :order_items, :quantity, :integer
  end

  def down
    change_column :order_items, :quantity, :float
  end
end
