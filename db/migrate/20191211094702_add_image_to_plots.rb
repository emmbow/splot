class AddImageToPlots < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :image_url, :text
  end
end
