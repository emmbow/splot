class AddColumnsToPlot < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :soil_type, :string
    add_column :plots, :plot_number, :string
  end
end
