class AddUrl1AndUrl2AndUrl3ToDashboards < ActiveRecord::Migration[5.2]
  def change
    add_column :dashboards, :url_1, :string
    add_column :dashboards, :url_2, :string
    add_column :dashboards, :url_3, :string
  end
end
