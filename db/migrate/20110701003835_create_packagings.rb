class CreatePackagings < ActiveRecord::Migration
  def self.up
    create_table :packagings do |t|
      t.integer :item_id
      t.integer :package_id
      t.timestamps
    end
  end

  def self.down
    drop_table :packagings
  end
end
