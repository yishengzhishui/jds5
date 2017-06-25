class RenamePrdocutListis < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :product_name
    add_column :orders, :product_name, :string
  end
end
