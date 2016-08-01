FactoryGirl.define do
  factory :user do
    email "ajaxwd@gmail.com"
    nombre "adrian"
    provider "github"
    uid "duah18y2beda"
    factory :dummy_user do
    	email "one@gmail.com"
    	nombre "one"
    	provider "facebook"
    	uid "duah18y2beda"
    end
    factory :sequence_user do
        sequence(:email) { |n| "person#{n}@example.com"}
        name "Marcos"
        provider "Facebook"
        uid "duah18y2beda"
    end
  end
end
