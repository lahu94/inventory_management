class ProductsController < ApplicationController
  before_action :load_prodct, only: [:edit, :update]
  
  def index
    @products = Product.all
    @warehouses = Warehouse.all
    render 'index'
  end
  
  def edit
    @warehouses_products = @product.warehouses_products
    render 'edit'
  end

  def update
    if @product.update_attributes(product_params)
      redirect_to root_path
    else
      render 'edit'
    end    
  end
  
  def load_prodct
    @product = Product.find_by(id: params[:id])
  end

  private
  def product_params
    params.require(:product).permit(
      :id,
      :sku_code, 
      :name, 
      :price,
      warehouses_products_attributes: [
        :product_id,
        :warehouse_id,
        :item_count,
        :low_item_threshold,
        :id
      ]
    )
  end 
end
