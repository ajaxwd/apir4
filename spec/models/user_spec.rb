require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email)}
  it { should_to allow_value("ajaxwd@gmail").for(:email)}
  it { should allow_value("ajaxwd@gmail.com").for(:email)}
  it { should validate_presence_of(:uid)}
  it { should validate_presence_of(:provider)}
  it { should validate_uniqueness_of(:email)}

  it "deberia crear un usuario si el uid y el provider no existen" do
  	expect{
  		User.from_omniauth({uid: "12345",provider: "facebook", info: {email: "u@mail.com"}})
  	}.to change(User,:count).by(0)
  end

  it "deberia encontrar un usuario si el uid y el provider ya existen" do
  	user = FactoryGirl.create(:user)
  	expect{
  		User.from_omniauth({uid: user.uid,provider: user.provider, info: {email: "u@mail.com"}})
  	}.to change(User,:count).by(0)
  end

  it "deberia retornar el usuario encontrado si el uid y el provider ya exiten" do
  	ser = FactoryGirl.create(:user)
  	expect(
  		User.from_omniauth({uid: user.uid,provider: user.provider})
  	).to eq(user)
  end
end
