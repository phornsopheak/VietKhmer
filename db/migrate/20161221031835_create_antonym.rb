class CreateAntonym < ActiveRecord::Migration
  def change
    create_table :antonyms do |t|
      t.references :word, index: true,  foreign_key: true
      t.references :meaning, index: true,  foreign_key: true
      t.timestamps null: false
    end
  end
end
