class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :package_id
      t.string :name
      t.string :make
      t.string :model
      t.string :barcode
      t.string :serial
      t.integer :checked_out_by
      t.integer :price
      t.string :condition
      t.datetime :last_serviced
      t.datetime :next_service
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
