class Warehouse < ApplicationRecord
  
  has_many :warehouses_products
  has_many :products, through: :warehouses_products

  validates :wh_code, presence: true, uniqueness: true, length: { in: 4..16, message: 'Wh code should be between 4 to 16 character' } 
  validates :max_apacity, :pincode, numericality: { only_integer: true}

  after_create :populate_warehouses_product
  
  def threshold_cross(product_id)
    warehouse_product = warehouse_product_details(product_id)
    warehouse_product.item_count < warehouse_product.low_item_threshold
  end  
  
  def warehouse_product_details(product_id)
    warehouses_products.where(product_id: product_id, warehouse_id: id).first
  end

  private
  def populate_warehouses_product
    Product.all.find_each do |product|
      warehouse_product = WarehousesProduct.new(
        product_id: product.id, 
        warehouse_id: id,
        item_count: 0,
        low_item_threshold: 10
      )
      warehouse_product.save
    end
  end  
end
