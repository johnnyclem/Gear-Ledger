class Package < ActiveRecord::Base
  attr_accessible :name, :make, :model, :barcode, :serial, :checked_out_by, :price, :condition, :last_serviced, :next_service
  has_attached_file :photo
end
