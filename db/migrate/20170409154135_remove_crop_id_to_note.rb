class RemoveCropIdToNote < ActiveRecord::Migration
  def change
  	remove_column :notes, :crop_id, :integer
  	remove_column :notes, :crop_type_id, :integer
  end
end
