class Ownership < ApplicationRecord
  belongs_to :user 
  belongs_to :stuff
  validates :user_id, presence: true
  validates :stuff_id, presence: true
end
