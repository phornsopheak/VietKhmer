class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :wordText
      t.integer :searchTime
      t.boolean :isIdiom, default: false

      t.timestamps null: false
    end
  end
end
