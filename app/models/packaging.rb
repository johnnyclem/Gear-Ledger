class Packaging < ActiveRecord::Base
  attr_accessible :item_id, :package_id
  belongs_to :item
  belongs_to :package
end
