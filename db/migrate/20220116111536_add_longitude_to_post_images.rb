class AddLongitudeToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :longitude, :float
  end
end
