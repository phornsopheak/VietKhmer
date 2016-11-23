class Word < ActiveRecord::Base
  validates :wordText, presence: true

  has_many :meanings
  has_many :word_articles
  has_many :articles, through: :word_articles
end
