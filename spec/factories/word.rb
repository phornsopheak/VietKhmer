FactoryGirl.define do
  factory :word do
    wordText {Faker::Lorem.word}
    searchTime {Faker::Number.number(3)}

    after(:create) do |word|
      FactoryGirl.create_list :meaning, 4, word: word
    end
  end
end