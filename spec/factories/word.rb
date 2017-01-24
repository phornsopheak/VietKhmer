FactoryGirl.define do
  factory :word do
    wordText {Faker::Lorem.word}
    searchTime {Faker::Number.number(3)}

    after(:create) do |word|
      FactoryGirl.create_list :meaning, 4, word: word
      FactoryGirl.create :meaning, word: word, isIdiom: true
    end
  end
end