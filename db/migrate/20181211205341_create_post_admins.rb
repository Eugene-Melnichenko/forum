class CreatePostAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :post_admins do |t|
      t.string :title
      t.text :summary
      t.text :body

      t.timestamps
    end
  end
end
