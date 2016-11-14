class Meaning < ActiveRecord::Base

  belongs_to :word
  has_many :examples

  validates :meaning, presence: true
end
