class AddImageToManual < ActiveRecord::Migration
  def change
    add_column :manuals, :image, :string
  end
end
