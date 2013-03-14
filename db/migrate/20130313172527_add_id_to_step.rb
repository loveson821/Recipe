class AddIdToStep < ActiveRecord::Migration
  def change
    add_column :steps, :manual_id, :integer
  end
end
