class RemoveColumnToFarm < ActiveRecord::Migration
  def change
    remove_column :farms, :prefecture, :string
  end
end
