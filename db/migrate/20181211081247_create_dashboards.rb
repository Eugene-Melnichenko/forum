class CreateDashboards < ActiveRecord::Migration[5.2]
  def change
    create_table :dashboards do |t|
      t.string :logotype
      t.string :title
      t.text :text_1
      t.text :text_2
      t.text :text_3

      t.timestamps
    end
  end
end
