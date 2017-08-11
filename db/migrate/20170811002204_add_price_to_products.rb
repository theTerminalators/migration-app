class AddPriceToProducts < ActiveRecord::Migration[5.1]
  def change
    # add_column :table_name, column_name, :type
    add_column :products, :price, :integer
  end
end
