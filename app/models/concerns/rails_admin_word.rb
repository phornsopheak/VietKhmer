module RailsAdminWord
  extend ActiveSupport::Concern

  included do
    rails_admin do
      edit do
        field :wordText do
          label "Word"
        end
        field :isIdiom do
          label "Idiom"
        end
        field :isTechnical do
          label "Technical"
        end
        field :meanings
      end
    end
  end
end
