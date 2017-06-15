class ChangeDatatypeToFarms < ActiveRecord::Migration
  def change
  	change_column :farms, :area, :integer
  end
end
