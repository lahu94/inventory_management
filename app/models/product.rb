class Product < ApplicationRecord
  
  has_many :warehouses_products
  has_many :warehouses, through: :warehouses_products 

  validates :sku_code, presence: true, uniqueness: true, length: { is: 8, message: 'sku code should contain 8 character not more or less'}
  validates :name, presence: true
  validates :price, numericality: true
  
  accepts_nested_attributes_for :warehouses_products    
end
