class CreateCropTypeNotes < ActiveRecord::Migration
  def change
    create_table :crop_type_notes do |t|
      t.integer :crop_type_id
      t.integer :note_id

      t.timestamps null: false
    end
  end
end
