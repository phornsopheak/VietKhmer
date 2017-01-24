class Word < ActiveRecord::Base
  include RailsAdminWord

  has_many :meanings
  has_many :word_articles
  has_many :articles, through: :word_articles
  has_many :synonyms
  has_many :antonyms
  has_many :synonymMeanings, through: :synonyms
  has_many :antonymMeanings, through: :antonyms
  accepts_nested_attributes_for :meanings, :allow_destroy => true

  validates :wordText, presence: true
  #validates :meanings, presence: true
end
