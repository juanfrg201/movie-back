FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "category #{n}" }
    description { "MyText" }
  end
end
