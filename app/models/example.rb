class Example < ActiveRecord::Base
  include RailsAdminExample

  belongs_to :meaning

  validates :vn_example, presence: true
  validates :vn_example, presence: true
end
