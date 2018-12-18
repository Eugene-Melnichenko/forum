FactoryBot.define do
  factory :message do
    message { "MyText" }
    email { "MyString" }
    user { nil }
  end
end
