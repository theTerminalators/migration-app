class MakeChangesToProducts < ActiveRecord::Migration[5.1]
  def change
    # rename title column to name
    # table_name, old_name, new_name
    rename_column :products, :title, :name
  end
end
