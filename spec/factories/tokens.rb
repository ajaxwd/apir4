FactoryGirl.define do
  factory :token do
    expires_at "2016-07-20 21:24:39"
    association :user, factory: :user
  end
end
