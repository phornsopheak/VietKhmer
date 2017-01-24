module RailsAdminMeaning
  extend ActiveSupport::Concern

  included do
    rails_admin do
      edit do
        field :meaning
        field :picture
        field :isIdiom do
          label "Idiom"
        end
        field :examples
        field :synonymWords do
          label "Synonyms"
          inline_add false
        end
        field :antonymWords do
          label "Antonyms"
          inline_add false
        end
      end
    end
  end
end
