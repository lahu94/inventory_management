require 'test_helper'

class WarehousesControllerTest < ActionDispatch::IntegrationTest
  
  test 'should create Warehouse' do
    assert_difference('Warehouse.count') do
      post warehouses_url, params: { warehouse: { wh_code: 'MUMBAI004', name: 'Mumbai', pincode: '421004', max_apacity: '200' } }
    end
    assert_redirected_to root_path
  end  
end