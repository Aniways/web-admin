class RemoveCategoryFromIcons < ActiveRecord::Migration
  def change
    remove_column :icons, :category, :string
  end
end
