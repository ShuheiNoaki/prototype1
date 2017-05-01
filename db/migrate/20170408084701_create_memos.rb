class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :title
      t.date :date
      t.text :datail

      t.timestamps null: false
    end
  end
end
