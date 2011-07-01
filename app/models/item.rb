class Item < ActiveRecord::Base
  attr_accessible :package_tokens, :name, :make, :model, :barcode, :serial, :checked_out_by, :price, :condition, :last_serviced, :next_service, :photo
  has_many :packagings
  has_many :packages, :through => :packagings
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "50x50>" }
  
  attr_reader :package_tokens
  
  def package_tokens=(ids)
    self.package_ids = ids.split(",")
  end
end
