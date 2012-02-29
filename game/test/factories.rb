FactoryGirl.define do
  factory :user do
    username "foo"
    password "password"
    email { "#{username}@example.com" }
  end
end
