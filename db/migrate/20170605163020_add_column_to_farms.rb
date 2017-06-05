class AddColumnToFarms < ActiveRecord::Migration
  def change
    add_column :farms, :mst_pref_id, :integer
  end
end
