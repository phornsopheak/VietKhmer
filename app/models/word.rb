class Word < ActiveRecord::Base
  validates :word, presence: true

  has_many :meanings
  has_many :word_articles
  has_many :articles, through: :word_articles
end
