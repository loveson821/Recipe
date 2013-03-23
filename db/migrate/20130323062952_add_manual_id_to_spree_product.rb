class AddManualIdToSpreeProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :manual_id, :integer
  end
end
