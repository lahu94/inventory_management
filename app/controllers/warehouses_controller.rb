class WarehousesController < ApplicationController
  
  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    if @warehouse.save
      redirect_to root_path
    else
      render 'new'
    end    
  end
  
  private
  def warehouse_params
    params.require(:warehouse).permit(
      :wh_code, 
      :name, 
      :pincode,
      :max_apacity
    )
  end
end
