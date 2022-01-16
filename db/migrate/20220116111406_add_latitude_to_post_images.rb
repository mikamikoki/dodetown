class AddLatitudeToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :latitube, :float
  end
end
