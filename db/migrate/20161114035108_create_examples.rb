class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :vn_example
      t.string :kh_example
      t.string :picture
      t.references :meaning, index: true,  foreign_key: true
    end
  end
end
