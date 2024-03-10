class ChangeProductsDetailToDescription < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :detail, :descriptions
  end
end
