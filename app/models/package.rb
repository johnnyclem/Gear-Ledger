class Package < ActiveRecord::Base
  attr_accessible :name, :make, :model, :barcode, :serial, :checked_out_by, :price, :condition, :last_serviced, :next_service, :photo
  has_many :packagings
  has_many :items, :through => :packagings, :autosave => true
  has_attached_file :photo, 
    :styles => { 
      :medium => "300x300>", 
      :thumb => "50x50>" 
      },
      :storage => :s3,
      :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
      :path => ":attachment/:id/:style.:extension"
end
