class AddTitleText1AndTitleText2AndTitleText3ToDashboard < ActiveRecord::Migration[5.2]
  def change
    add_column :dashboards, :title_text_1, :string
    add_column :dashboards, :title_text_2, :string
    add_column :dashboards, :title_text_3, :string
  end
end
