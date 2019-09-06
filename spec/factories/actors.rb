FactoryBot.define do
  factory :actor do
    sequence(:first_name) { |n| "actorFirstName#{n}" }
    sequence(:last_name) { |n| "actorLastName#{n}" }
  end
end
