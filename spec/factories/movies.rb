FactoryBot.define do
  factory :movie do
    sequence(:name) { |n| "Movie#{n}" }
    description { "MyString" }
    year { "MyString" }
    ranking { "MyString" }
    category { nil }
  end
end
