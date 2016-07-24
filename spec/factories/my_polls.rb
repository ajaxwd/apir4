FactoryGirl.define do
  factory :my_poll do
    association :user, factory: :user
    expires_at "2016-07-24 09:11:05"
    title "MyStringaa"
    description "MyTextdsfadgad agdfgsdf sdfgsdfgsdgsdfg s"
  end
end
