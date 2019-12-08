class CreateAllotments < ActiveRecord::Migration[5.2]
  def change
    create_table :allotments do |t|
      t.string :address
      t.integer :number_of_plots
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
