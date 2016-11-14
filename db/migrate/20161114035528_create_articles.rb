class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :vn_title
      t.string :kh_title
      t.text :vn_article
      t.text :kh_article

      t.timestamps null: false
    end
  end
end
