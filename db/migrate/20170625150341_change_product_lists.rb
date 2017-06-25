class ChangeProductLists < ActiveRecord::Migration[5.0]
  def change
    remove_column  :orders, :product_name
    remove_column  :product_lists , :product_name
    add_column     :product_lists, :product_name, :string
  end
end
