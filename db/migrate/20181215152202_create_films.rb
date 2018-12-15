class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.string :url
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
