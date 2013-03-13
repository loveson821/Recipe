class CreateManuals < ActiveRecord::Migration
  def change
    create_table :manuals do |t|
      t.string :title
      t.text :body
      t.date :publish_date
      t.integer :user_id

      t.timestamps
    end
  end
end
