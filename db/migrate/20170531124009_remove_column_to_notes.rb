class RemoveColumnToNotes < ActiveRecord::Migration
  def change
  	remove_column :notes, :finished_date
  end
end
