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
  end
end
