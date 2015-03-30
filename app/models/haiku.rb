class Haiku < ActiveRecord::Base
  validates :haiku, presence: true
  belongs_to :user
  has_many :votes, through: :users
end
