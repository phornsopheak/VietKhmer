class CreateSynonym < ActiveRecord::Migration
  def change
    create_table :synonyms do |t|
      t.references :word, index: true,  foreign_key: true
      t.references :meaning, index: true,  foreign_key: true
      t.timestamps null: false
    end
  end
end
