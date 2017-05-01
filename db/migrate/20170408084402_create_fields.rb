class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.text :detail

      t.timestamps null: false
    end
  end
end