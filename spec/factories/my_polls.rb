FactoryGirl.define do
  factory :my_poll do
    association :user, factory: :sequence_user
    expires_at "2016-07-24 09:11:05"
    title "MyStringaa"
    description "MyTextdsfadgad agdfgsdf sdfgsdfgsdgsdfg s"
    factory :Poll_With_questions do
    	title "Poll with questions"
	    description "MyTextdsfadgad agdfgsdf sdfgsdfgsdgsdfg s"
	    questions { build_list :question, 2}
    end
  end
end
