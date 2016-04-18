FactoryGirl.define do
  factory :category do
    name { %w(chinese japanese mexican).sample }
  end
end
