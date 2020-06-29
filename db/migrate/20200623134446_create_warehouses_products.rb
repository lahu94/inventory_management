class CreateWarehousesProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouses_products do |t|
      t.references :product_id, index: true, foreign_key: true
      t.references :warehouse_id, index: true, foreign_key: true
      t.integer :item_count
      t.integer :low_item_threshold

      t.timestamps
    end
  end
end
