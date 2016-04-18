FactoryGirl.define do

  factory :restaurant do
    capacity { rand(5..100)}
  end

  factory :small_restaurant, class: 'Restaurant' do
    capacity { rand(25) }
  end

  factory :large_restaurant, class: 'Restaurant' do
    capacity { rand(75..100) }
  end
end
