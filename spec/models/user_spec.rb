require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email)}
  it { should_to allow_value("ajaxwd@gmail").for(:email)}
  it { should allow_value("ajaxwd@gmail.com").for(:email)}
  it { should validate_presence_of(:uid)}
  it { should validate_presence_of(:provider)}
end
