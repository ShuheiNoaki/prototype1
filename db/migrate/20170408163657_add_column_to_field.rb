class AddColumnToField < ActiveRecord::Migration
  def change
  	add_column :fields, :area, :integer
  end
end
