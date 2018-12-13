class AddImageToPostAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :post_admins, :image, :string
  end
end
