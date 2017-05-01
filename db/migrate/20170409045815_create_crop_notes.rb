class CreateCropNotes < ActiveRecord::Migration
  def change
    create_table :crop_notes do |t|
      t.integer :crop_id
      t.integer :note_id

      t.timestamps null: false
    end
  end
end
