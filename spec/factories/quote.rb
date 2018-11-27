FactoryBot.define do
  factory :quote do
    value { Faker::Lorem.word }
    tags { [Faker::Lorem.word ]}
  end
end