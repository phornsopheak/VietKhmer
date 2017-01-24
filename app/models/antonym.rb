class Antonym < ActiveRecord::Base
  belongs_to :antonymWord, class_name: "Word", foreign_key: "word_id"
  belongs_to :antonymMeaning, class_name: "Meaning", foreign_key: "meaning_id"
end
