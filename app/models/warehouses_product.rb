class WarehousesProduct < ApplicationRecord

  belongs_to :warehouse
  belongs_to :product
  
  validates :item_count, :low_item_threshold, numericality: true
end
