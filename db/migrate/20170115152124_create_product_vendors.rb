class CreateProductVendors < ActiveRecord::Migration
  def change
    create_table :product_vendors do |t|
      t.integer :product_id
      t.integer :vendor_id

      t.timestamps null: false
    end
  end
end
