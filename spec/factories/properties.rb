FactoryBot.define do
  factory :property do
    name { "MyString" }
    address { "MyString" }
    price { 1 }
    rooms { 1 }
    bathrooms { 1 }
    photo { "MyString" }
    account { nil }
  end
end
