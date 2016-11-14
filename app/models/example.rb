class Example < ActiveRecord::Base

  belongs_to :meaning

  validates :vn_example, presence: true
  validates :vn_example, presence: true
end
