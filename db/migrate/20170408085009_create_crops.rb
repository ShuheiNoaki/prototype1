class CreateCrops < ActiveRecord::Migration
  def change
    create_table :crops do |t|
      t.string :name
      t.binary :icon

      t.timestamps null: false
    end
  end
end
