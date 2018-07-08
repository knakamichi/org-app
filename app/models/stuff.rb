class Stuff < ApplicationRecord
  has_many :ownerships, dependent: :destroy
  has_many :users, :through => :ownerships
  accepts_nested_attributes_for :ownerships

  validates :name, presence: true, length: { maximum: 140 }
  validates :description1, presence: true, length: {maximum:200}

end
