class CreateFarmCrops < ActiveRecord::Migration
  def change
    create_table :farm_crops do |t|
      t.integer :farm_id
      t.integer :crop_id

      t.timestamps null: false
    end
  end
end
