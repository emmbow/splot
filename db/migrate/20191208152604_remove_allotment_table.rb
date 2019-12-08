class RemoveAllotmentTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :allotments
  end
end
