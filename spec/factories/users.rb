FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@domain.tld" }
    username('testuser')
    password('11111111')
    password_confirmation('11111111')
  end
end
