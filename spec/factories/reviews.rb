FactoryBot.define do
  factory :review do
    sequence(:email) { |n| "user#{n}@example.com" }
    title "Avengers: Infinity War"
    body "This was a cool movie!"
    sequence(:rating) { |n| n }
    movie_id "299536"
  end
end
