require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  should accept_nested_attributes_for(:warehouses_products)
  should have_many :warehouses_products
  should have_many :warehouses

  test "should not save product without correct sku code" do
    product = Product.new(sku_code: 'MUMB10000', price: '1234', name: 'Iphone 11')
    product.valid?
    refute product.save
    assert_equal product.errors.messages[:sku_code].first, "sku code should contain 8 character not more or less"
  end

  test "should not create duplicate product same sku code" do
    Product.create(sku_code: 'MUMB1002', price: '1234', name: 'Iphone 11')
    product = Product.new(sku_code: 'MUMB1002', price: '1234', name: 'Iphone 11')
    refute product.save
    assert_equal product.errors.messages[:sku_code].first, "has already been taken"
  end

  test "should not create prodcut without name" do
    product = Product.new(sku_code: 'MUMB1002', price: '1234')
    refute product.save
    assert_equal product.errors.messages[:name].first, "can't be blank"
  end

  test "should not create product with alphanumberic value as price" do
    product = Product.new(sku_code: 'MUMB1002', price: '1234aa', name: 'Iphone 11')
    refute product.save
    assert_equal product.errors.messages[:price].first, "is not a number"
  end

  test "should save product" do
    product = Product.new(sku_code: 'MUMB1002', price: '1234', name: 'Iphone 11')
    assert product.save
  end
end
