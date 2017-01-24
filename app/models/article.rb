class Article < ActiveRecord::Base
  include RailsAdminArticle

  has_many :word_articles
  has_many :words, through: :word_articles

  validates :vn_title, presence: true
  validates :kh_title, presence: true
  validates :vn_article, presence: true
  validates :kh_article, presence: true
end