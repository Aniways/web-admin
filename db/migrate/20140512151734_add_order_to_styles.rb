class AddOrderToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :view_order, :text
  end
end
