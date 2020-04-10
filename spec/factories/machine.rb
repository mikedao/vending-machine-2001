FactoryBot.define do
  factory :machine, class: Machine do
    location      { Faker::Name.name }
    association   :owner, factory: :owner
  end
end
