class ChangeProductsToDescriptionsDescription < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :descriptions, :description
  end
end
