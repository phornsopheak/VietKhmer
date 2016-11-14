FactoryGirl.define do
  factory :example do
    kh_example {Faker::Lorem.sentence(3, true, 4)}
    vn_example {Faker::Lorem.sentence(3, true, 4)}
  end
end