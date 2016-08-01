class MyPoll < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  
  validates :title, presence: true, length: { minimun: 10}
  validates :description, presence: true, length: { minimun: 20}
  validates :expires_at, presence: true

  validates :user, presence: true
  
  def is_invalid?
  	DateTime.now < self.expires_at
  end
end
