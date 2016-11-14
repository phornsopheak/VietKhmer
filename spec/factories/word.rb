FactoryGirl.define do
  factory :word do
    word {Faker::Lorem.word}

    after(:create) do |word|
      FactoryGirl.create_list :meaning, 4, word: word
    end
  end
end