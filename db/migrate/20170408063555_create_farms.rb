class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :farmname
      t.string :area
      t.string :prefecture
      t.string :city

      t.timestamps null: false
    end
  end
end
