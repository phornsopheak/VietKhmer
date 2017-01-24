module RailsAdminArticle
  extend ActiveSupport::Concern

  included do
    rails_admin do
      edit do
        field :vn_title do
          label "Vietnamese title"
        end
        field :kh_title do
          label "Khmer title"
        end
        field :vn_article, :ck_editor do
          label "Vietnamese description"
        end
        field :kh_article, :ck_editor do
          label "Khmer description"
        end
        field :words do
          label "Related words"
          inline_add false
        end
      end
    end
  end
end
