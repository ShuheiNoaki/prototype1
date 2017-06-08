class CreateFarmCropTypes < ActiveRecord::Migration
  def change
    create_table :farm_crop_types do |t|
      t.integer :farm_id
      t.integer :crop_type_id

      t.timestamps null: false
    end
  end
end
