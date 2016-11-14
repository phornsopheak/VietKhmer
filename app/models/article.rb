class Article < ActiveRecord::Base
  has_many :word_articles
  has_many :words, through: :word_articles
end