class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :start_date
      t.date :finished_date
      t.integer :crop_id
      t.integer :crop_type_id

      t.timestamps null: false
    end
  end
end
