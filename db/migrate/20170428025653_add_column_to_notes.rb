class AddColumnToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :field_id, :integer
  end
end
