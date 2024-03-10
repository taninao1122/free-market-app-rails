class AddProductsPictureDetail < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :image, :string
    add_column :products, :detail, :string
  end
end
