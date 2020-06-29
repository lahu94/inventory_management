require 'test_helper'

class WarehousesProductTest < ActiveSupport::TestCase
  
  should belong_to :warehouse
  should belong_to :product

  test "Should not warehouses_product if item_count/low_item_threshold are alphanumeric" do
    warehouse = Warehouse.create(wh_code: 'MUMBAI004', name: 'Mumbai', pincode: '421004', max_apacity: '200')
    product = Product.create(sku_code: 'MUMB1002', price: '1234', name: 'Iphone 11')
    warehouses_product = WarehousesProduct.new(product_id: product.id, warehouse_id: warehouse.id, item_count: '10a', low_item_threshold: '12q')
    refute warehouses_product.save
    assert_equal warehouses_product.errors.messages[:item_count].first, "is not a number"
    assert_equal warehouses_product.errors.messages[:low_item_threshold].first, "is not a number"
  end

  test "Should warehouses_product" do
    warehouse = Warehouse.create(wh_code: 'MUMBAI004', name: 'Mumbai', pincode: '421004', max_apacity: '200')
    product = Product.create(sku_code: 'MUMB1002', price: '1234', name: 'Iphone 11')
    warehouses_product = WarehousesProduct.new(product_id: product.id, warehouse_id: warehouse.id, item_count: '10', low_item_threshold: '12')
    assert warehouses_product.save
  end
end
