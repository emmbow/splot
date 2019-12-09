class CreatePlacings < ActiveRecord::Migration[5.2]
  def change
    create_table :placings do |t|
      t.references :plot, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
