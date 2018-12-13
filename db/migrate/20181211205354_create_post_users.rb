class CreatePostUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :post_users do |t|
      t.string :title
      t.text :summary
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
