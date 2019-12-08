class CreatePlots < ActiveRecord::Migration[5.2]
  def change
    create_table :plots do |t|
      t.references :site, foreign_key: true
      t.string :size
      t.string :number_of_growers

      t.timestamps
    end
  end
end
