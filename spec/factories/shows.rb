FactoryBot.define do
  factory :show do
    sequence(:name) { |n| "showName#{n}" }
  end
end
