class AddColumnToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :title, :string
    add_column :notes, :content, :text
  end
end
