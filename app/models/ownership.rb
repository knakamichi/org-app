class Ownership < ApplicationRecord
  belongs_to :user
  belongs_to :stuff
  accepts_nested_attributes_for :stuff

  validates :user_id, presence: true
  validates :stuff_id, presence: true
end
