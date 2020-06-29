require 'test_helper'

class WarehouseTest < ActiveSupport::TestCase
  
  should have_many :warehouses_products
  should have_many :products

  test "should not save warehouse if warehouse wh code is less than 4 character" do
    warehouse = Warehouse.new(wh_code: 'MUM', name: 'Mumbai', pincode: '421004', max_apacity: '200')
    refute warehouse.save
    assert_equal warehouse.errors.messages[:wh_code].first, "Wh code should be between 4 to 16 character"
  end

  test "should not save warehouse if warehouse wh code is more than 16 character" do
    warehouse = Warehouse.new(wh_code: 'MUMBAIULHASNAGER421004', name: 'Mumbai', pincode: '421004', max_apacity: '200')
    refute warehouse.save
    assert_equal warehouse.errors.messages[:wh_code].first, "Wh code should be between 4 to 16 character"
  end

  test "should not save warehouse if duplicate warehouse wh code present" do
    Warehouse.create(wh_code: 'MUMBAI004', name: 'Mumbai', pincode: '421004', max_apacity: '200')
    warehouse = Warehouse.new(wh_code: 'MUMBAI004', name: 'Mumbai', pincode: '421004', max_apacity: '200')
    refute warehouse.save
    assert_equal warehouse.errors.messages[:wh_code].first, "has already been taken"
  end

  test "should not save warehouse if warehouse pincode/apacity is alphanumeric" do
    warehouse = Warehouse.new(wh_code: 'MUMBAI004', name: 'Mumbai', pincode: '421004a', max_apacity: '200q')
    refute warehouse.save
    assert_equal warehouse.errors.messages[:pincode].first, "is not a number"
    assert_equal warehouse.errors.messages[:max_apacity].first, "is not a number"
  end
  
  test "should save warehouse" do
    warehouse = Warehouse.new(wh_code: 'MUMBAI004', name: 'Mumbai', pincode: '421004', max_apacity: '200')
    assert warehouse.save
  end

  test "#threshold_cross method should provide value wheter warehouse product crossed the thro" do
    warehouse = Warehouse.create(wh_code: 'MUMBAI004', name: 'Mumbai', pincode: '421004', max_apacity: '200')
    product = Product.create(sku_code: 'MUMB1002', price: '1234', name: 'Iphone 11')
    WarehousesProduct.create(product_id: product.id, warehouse_id: warehouse.id, item_count: '10', low_item_threshold: '12')
    assert warehouse.threshold_cross(product.id)
  end
  
end
