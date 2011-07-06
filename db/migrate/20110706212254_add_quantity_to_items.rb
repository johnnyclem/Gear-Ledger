class AddQuantityToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :quantity, :integer
  end

  def self.down
    remove_column :items, :quantity
  end
end
