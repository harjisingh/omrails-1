class AddCategoryToUser < ActiveRecord::Migration
  def change
    add_column :users, :category, :string
    add_index :users, :category
  end
end
