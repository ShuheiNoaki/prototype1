class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :farm_id
      t.integer :send_id

      t.timestamps null: false
    end
  end
end
