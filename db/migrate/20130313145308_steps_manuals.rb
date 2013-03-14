class StepsManuals < ActiveRecord::Migration
  def change
    create_table :steps_manuals, :id => false do |t|
      t.integer :step_id
      t.integer :manual_id
    end
    add_index :steps_manuals, [:step_id, :manual_id]
  end
  
end
