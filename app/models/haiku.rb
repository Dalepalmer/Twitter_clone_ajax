class Haiku < ActiveRecord::Base
  validates :haiku, presence: true
  belongs_to :user
end
