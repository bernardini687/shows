FactoryBot.define do
  factory :character do
    sequence(:first_name) { |n| "characterFirstName#{n}" }
    sequence(:last_name) { |n| "characterLastName#{n}" }
    show
    actor
  end
end
