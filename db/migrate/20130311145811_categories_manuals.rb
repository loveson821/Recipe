class CategoriesManuals < ActiveRecord::Migration
  def change
    create_table :categories_manuals, :id => false do |t|
      t.integer :category_id
      t.integer :manual_id
    end
    add_index :categories_manuals, [:category_id, :manual_id]
  end
end
