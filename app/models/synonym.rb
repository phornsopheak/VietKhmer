class Synonym < ActiveRecord::Base
  belongs_to :synonymWord, class_name: "Word", foreign_key: "word_id"
  belongs_to :synonymMeaning, class_name: "Meaning", foreign_key: "meaning_id"
end
