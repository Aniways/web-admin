class AddIndexToStylesName < ActiveRecord::Migration
  def change
  	add_index :styles, :name, unique: true
  end
end
