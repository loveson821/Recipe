class AddPreferenceToManual < ActiveRecord::Migration
  def change
    add_column :manuals, :cookTime, :integer
    add_column :manuals, :quantity, :integer
    add_column :manuals, :kcal, :integer
    add_column :manuals, :difficulty, :integer
  end
end
