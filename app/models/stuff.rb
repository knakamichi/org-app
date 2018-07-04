class Stuff < ApplicationRecord
  belongs_to :user

  has_many :passive_uses, class_name: "Ownership", foreign_key: "stuff_id", dependent: :destroy
  has_many :owners, through: :active_ownership, source: :user

  validates :name, presence: true, length: { maximum: 140 }
  validates :description1, presence: true, length: {maximum:200}
end
