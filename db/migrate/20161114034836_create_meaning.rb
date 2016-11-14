class CreateMeaning < ActiveRecord::Migration
  def change
    create_table :meanings do |t|
      t.text :meaning
      t.string :picture
      t.boolean :isIdiom, default: false
      t.references :word, index: true,  foreign_key: true

      t.timestamps null: false
    end
  end
end
