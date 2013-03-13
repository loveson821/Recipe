# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :manual do
    title "MyString"
    body "MyText"
    publish_data "2013-03-10"
    user_id 1
  end
end
