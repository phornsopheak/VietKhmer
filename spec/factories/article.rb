FactoryGirl.define do
  factory :article do
    kh_title {Faker::Lorem.sentence(3, true, 4)}
    vn_title {Faker::Lorem.sentence(3, true, 4)}
    kh_article {Faker::Lorem.paragraphs}
    vn_article {Faker::Lorem.paragraphs}
  end
end
