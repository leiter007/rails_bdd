FactoryBot.define do
  factory :comment do
    commenter { "MyString" }
    body { "MyText" }
    email { "MyString" }
    article { nil }
  end
end
