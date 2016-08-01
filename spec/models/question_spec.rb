require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of :desciption }
  it { should validate_presence_of :my_poll }
  it { should validate_length_of(:desciption).is_at_least(10)}
end
