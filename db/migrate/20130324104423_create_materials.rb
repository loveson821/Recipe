class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :amount
      t.integer :manual_id
      t.timestamps
    end
  end
end
