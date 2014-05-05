class AddCategoryToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :category, :integer, :null => false
  end
end
