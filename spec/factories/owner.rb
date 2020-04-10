FactoryBot.define do
  factory :owner, class: Owner do
    name      { Faker::Name.name }
  end
end
