class CreateMstPrefs < ActiveRecord::Migration
  def change
    create_table :mst_prefs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
