class DopProductPhotos < ActiveRecord::Migration
  def change
    drop_table :product_photos
  end
end
