require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  
  test 'should create Product' do
    warehouse = Warehouse.create(wh_code: 'MUMBAI004', name: 'Mumbai', pincode: '421004', max_apacity: '200')
    product = Product.create(sku_code: 'MUMB1002', price: '1234', name: 'Iphone 11')
    warehouses_product = WarehousesProduct.create(product_id: product.id, warehouse_id: warehouse.id, item_count: '10', low_item_threshold: '12')
    
    put product_url(product.id), params: { product: {warehouses_products_attributes: {item_count: "12", low_item_threshold: "14", id: warehouses_product.id, product_id: product.id , warehouse_id: warehouse.id}}}
    assert_equal 12, warehouses_product.reload.item_count
    assert_equal 14, warehouses_product.reload.low_item_threshold
    assert_redirected_to root_path
  end
end