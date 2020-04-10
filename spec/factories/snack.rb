FactoryBot.define do
  factory :snack, class: Snack do
    name      { Faker::Name.name }
    price     { Faker::Number.decimal(l_digits: 2) }
  end
end
