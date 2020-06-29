# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

warehouses = Warehouse.create(
  [
    { wh_code: 'MUMBAI001', name: 'Mumbai', pincode: '421004', max_apacity: 200},
    { wh_code: 'BANGALORE001', name: 'Bangalore', pincode: '560001', max_apacity: 200},
    { wh_code: 'NEWDELHI001', name: 'New Delhi', pincode: '110002', max_apacity: 200}, 
  ]
)

products = Product.create(
  [
    {sku_code: 'IPHONE11', price: '50000', name: 'Iphone 11'},
    {sku_code: 'IPHONE10', price: '40000', name: 'Iphone 10'},
    {sku_code: 'DELLMON1', price: '5000', name: 'Dell monitor'},
    {sku_code: 'DELLLAP1', price: '40000', name: 'Dell Laptop'},
    {sku_code: 'LENOMON1', price: '6000', name: 'Lenovo monitor'},
    {sku_code: 'LENOLAP1', price: '60000', name: 'Lenovo monitor'},
    {sku_code: 'DELLMON2', price: '5000', name: 'Dell monitor 2'},
    {sku_code: 'DELLLAP2', price: '40000', name: 'Dell Laptop 2'},
    {sku_code: 'LENOMON2', price: '6000', name: 'Lenovo monitor 2'},
    {sku_code: 'LENOLAP2', price: '60000', name: 'Lenovo monitor 2'},
    {sku_code: 'DELLMON3', price: '5000', name: 'Dell monitor 3'},
    {sku_code: 'DELLLAP3', price: '40000', name: 'Dell Laptop 3'},
    {sku_code: 'LENOMON3', price: '6000', name: 'Lenovo monitor 3'},
    {sku_code: 'LENOLAP3', price: '60000', name: 'Lenovo monitor 3'},
    {sku_code: 'DELLMON4', price: '5000', name: 'Dell monitor 4'},
    {sku_code: 'DELLLAP4', price: '40000', name: 'Dell Laptop 4'},
    {sku_code: 'LENOMON4', price: '6000', name: 'Lenovo monitor 4'},
    {sku_code: 'LENOLAP4', price: '60000', name: 'Lenovo monitor 4'},
    {sku_code: 'DELLMON5', price: '5000', name: 'Dell monitor 5'},
    {sku_code: 'DELLLAP5', price: '40000', name: 'Dell Laptop 5'},
    {sku_code: 'LENOMON5', price: '6000', name: 'Lenovo monitor 5'},
    {sku_code: 'LENOLAP5', price: '60000', name: 'Lenovo monitor 5'},
    {sku_code: 'DELLMON6', price: '5000', name: 'Dell monitor 6'},
    {sku_code: 'DELLLAP6', price: '40000', name: 'Dell Laptop 6'},
    {sku_code: 'LENOMON6', price: '6000', name: 'Lenovo monitor 6'},
    {sku_code: 'LENOLAP6', price: '60000', name: 'Lenovo monitor 6'},
    {sku_code: 'DELLMON7', price: '5000', name: 'Dell monitor 7'},
    {sku_code: 'DELLLAP7', price: '40000', name: 'Dell Laptop 7'},
    {sku_code: 'LENOMON7', price: '6000', name: 'Lenovo monitor 7'},
    {sku_code: 'LENOLAP7', price: '60000', name: 'Lenovo monitor 7'},
    {sku_code: 'DELLMON8', price: '5000', name: 'Dell monitor 8'},
    {sku_code: 'DELLLAP8', price: '40000', name: 'Dell Laptop 8'},
    {sku_code: 'LENOMON8', price: '6000', name: 'Lenovo monitor 8'},
    {sku_code: 'LENOLAP8', price: '60000', name: 'Lenovo monitor 8'},
    {sku_code: 'DELLMON9', price: '5000', name: 'Dell monitor 9'},
    {sku_code: 'DELLLAP9', price: '40000', name: 'Dell Laptop 9'},
    {sku_code: 'LENOMON9', price: '6000', name: 'Lenovo monitor 9'},
    {sku_code: 'LENOLAP9', price: '60000', name: 'Lenovo monitor 9'},
    {sku_code: 'LGTV0001', price: '60000', name: 'LG TV'},
    {sku_code: 'TLCTV001', price: '60000', name: 'TLC TV'},
    {sku_code: 'VIDTV001', price: '60000', name: 'videocon TV'},
    {sku_code: 'LGTV0002', price: '60000', name: 'LG TV 2'},
    {sku_code: 'TLCTV002', price: '60000', name: 'TLC TV 2'},
    {sku_code: 'VIDTV002', price: '60000', name: 'videocon TV 2'},
    {sku_code: 'LGTV0003', price: '60000', name: 'LG TV 3'},
    {sku_code: 'TLCTV003', price: '60000', name: 'TLC TV 3'},
    {sku_code: 'VIDTV003', price: '60000', name: 'videocon TV 3'},
    {sku_code: 'LGTV0004', price: '60000', name: 'LG TV 4'},
    {sku_code: 'TLCTV004', price: '60000', name: 'TLC TV 4'},
    {sku_code: 'VIDTV004', price: '60000', name: 'videocon TV 4'},
    {sku_code: 'LGTV0005', price: '60000', name: 'LG TV 5'},
    {sku_code: 'TLCTV005', price: '60000', name: 'TLC TV 5'},
    {sku_code: 'VIDTV005', price: '60000', name: 'videocon TV 5'},
    {sku_code: 'LGTV0006', price: '60000', name: 'LG TV 6'},
    {sku_code: 'TLCTV006', price: '60000', name: 'TLC TV 6'},
    {sku_code: 'VIDTV006', price: '60000', name: 'videocon TV 6'},
    {sku_code: 'LGTV0007', price: '60000', name: 'LG TV 7'},
    {sku_code: 'TLCTV007', price: '60000', name: 'TLC TV 7'},
    {sku_code: 'VIDTV007', price: '60000', name: 'videocon TV 7'},
    {sku_code: 'LGTV0008', price: '60000', name: 'LG TV 8'}
  ]
) 

warehouse_mumbai = Warehouse.find_by(wh_code: 'MUMBAI001')
Product.all.each do |product|
  WarehousesProduct.create(
    product_id: product.id,
    warehouse_id: warehouse_mumbai.id,
    item_count: 14,
    low_item_threshold: 10
  )
end

bangalore_warehouse = Warehouse.find_by(wh_code: 'BANGALORE001')

Product.first(20).each do |product|
  WarehousesProduct.create(
    product_id: product.id,
    warehouse_id: bangalore_warehouse.id,
    item_count: 8,
    low_item_threshold: 10
  )
end

Product.last(40).each do |product|
  WarehousesProduct.create(
    product_id: product.id,
    warehouse_id: bangalore_warehouse.id,
    item_count: 16,
    low_item_threshold: 10
  )
end

new_delhi_warehouse = Warehouse.find_by(wh_code: 'NEWDELHI001')

Product.first(30).each do |product|
  WarehousesProduct.create(
    product_id: product.id,
    warehouse_id: new_delhi_warehouse.id,
    item_count: 5,
    low_item_threshold: 10
  )
end

Product.last(30).each do |product|
  WarehousesProduct.create(
    product_id: product.id,
    warehouse_id: new_delhi_warehouse.id,
    item_count: 20,
    low_item_threshold: 10
  )
end
