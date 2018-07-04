class Ownership < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :stuff, class_name: "Stuff"
  validates :owner_id, presence: true
  validates :stuff_id, presence: true
end
