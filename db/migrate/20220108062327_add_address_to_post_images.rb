class AddAddressToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :address, :string
  end
end
