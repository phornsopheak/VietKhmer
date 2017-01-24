module RailsAdminExample
  extend ActiveSupport::Concern

  included do
    rails_admin do
      edit do
        field :vn_example do
          label "Vietnamese"
        end
        field :kh_example do
          label "Khmer"
        end
        field :picture
      end
    end
  end
end
