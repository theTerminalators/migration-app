class MakeMoreChangesToProducts < ActiveRecord::Migration[5.1]
  def change
    # change description from string to text
    change_column :products, :description, :text
    # change price column type to decimal
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 6, scale: 2
    # get rid of the isbn #
    remove_column :products, :isbn, :string
  end
end
