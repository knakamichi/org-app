class Stuff < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 140 }
  validates :description1, presence: true, length: {maximum:200}
end
