class CreateWordArticles < ActiveRecord::Migration
  def change
    create_table :word_articles do |t|
      t.references :word, index: true,  foreign_key: true
      t.references :article, index: true,  foreign_key: true

      t.timestamps null: false
    end
  end
end
