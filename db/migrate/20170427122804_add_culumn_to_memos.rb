class AddCulumnToMemos < ActiveRecord::Migration
  def change
    add_column :memos, :note_id, :integer
  end
end
