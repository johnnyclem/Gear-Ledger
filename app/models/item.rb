class Item < ActiveRecord::Base
  attr_accessible :package_tokens, :name, :make, :model, :barcode, :serial, :checked_out_by, :price, :condition, :last_serviced, :next_service, :photo
  has_many :packagings do
    def find_all_by_package(package)
      find_all_by_package_id(package.id)
    end
  end
  has_many :packages, :through => :packagings, :autosave => true
  has_attached_file :photo, 
    :styles => { 
      :medium => "300x300>", 
      :thumb => "50x50>" 
      },
      :storage => :s3,
      :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
      :path => ":attachment/:id/:style.:extension"
  
  attr_reader :package_tokens
  
  def package_tokens=(ids)
    self.package_ids = ids.split(",")
  end
end
