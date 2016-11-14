FactoryGirl.define do
  factory :meaning do
    meaning {Faker::Lorem.sentence(3, true, 4)}

    after(:create) do |meaning|
      FactoryGirl.create_list :example, 2, meaning: meaning
    end
  end
end