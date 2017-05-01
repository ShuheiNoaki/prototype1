class CreateCropTypes < ActiveRecord::Migration
  def change
    create_table :crop_types do |t|
      t.string :name
      t.integer :crop_id

      t.timestamps null: false
    end
  end
end
