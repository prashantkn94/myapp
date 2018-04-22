# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :user do
    name "username"
    sequence(:email){|n| "user#{n}@factory.com" }
    password "password"
    password_confirmation "password"
  end
end

FactoryGirl.define do
  factory :invalid_user, class: User do
    name "username"
    email "invalid@@email"
    password "password"
    password_confirmation "password"
  end
end


