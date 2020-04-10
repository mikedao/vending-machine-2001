FactoryBot.define do
  factory :snack, class: Snack do
    name      { Faker::Name.name }
    price     { Faker::Commerce.price }
  end
end
