class Ownership < ApplicationRecord
  belongs_to :user
  belongs_to :stuff
  accepts_nested_attributes_for :user

  validates :user_id, presence: true
  validates :stuff_id, presence: true
end
