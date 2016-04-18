FactoryGirl.define do
  factory :reservation do
    party_size  { Rand(1..200)}
    time        { Time.now }
  end
end
