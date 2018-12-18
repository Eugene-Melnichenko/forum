class AddAdminToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :admin, :boolean, default: false
  end
end
