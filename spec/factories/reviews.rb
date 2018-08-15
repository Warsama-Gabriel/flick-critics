FactoryBot.define do
  factory :review do
    sequence(:email) { |n| "user#{n}@example.com" }
    title "Avengers: Infinity War"
    body Faker::Lorem.sentence(3, true)
    sequence(:rating) { |n| n }
    movie_id "299536"

    trait :invalid do
    	rating nil
  	end
  end
end
