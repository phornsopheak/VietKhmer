class WordArticle < ActiveRecord::Base
  belongs_to :word
  belongs_to :article
end
