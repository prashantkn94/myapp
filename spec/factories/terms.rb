# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :term do
    term "MyText"
    user nil
  end
end
