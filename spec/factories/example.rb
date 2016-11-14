FactoryGirl.define do
  factory :example do
    kh_example {Faker::Lorem.sentence(3, true, 4)}
    vn_example {Faker::Lorem.sentence(3, true, 4)}
    picture 'https://goo.gl/photos/3fh51M7ipKw6NT2Y8'
  end
end