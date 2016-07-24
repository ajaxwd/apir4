class MyPoll < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimun: 10}
  validates :description, presence: true, length: { minimun: 20}
  validates :expires_at, presence: true

  def is_invalid?
  	DateTime.now < self.expires_at
  end
end
