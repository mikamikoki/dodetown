class AddLatitudeToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :latitude, :float
  end
end
