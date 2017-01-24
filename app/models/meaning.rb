class Meaning < ActiveRecord::Base
  include RailsAdminMeaning

  belongs_to :word
  has_many :examples
  has_many :synonyms
  has_many :antonyms
  has_many :synonymWords, through: :synonyms
  has_many :antonymWords, through: :antonyms
  accepts_nested_attributes_for :examples

  validates :meaning, presence: true
  validates :word, presence: false
end
