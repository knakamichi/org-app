class User < ApplicationRecord
  has_many :ownerships, dependent: :destroy
  has_many :stuffs, :through => :ownerships

  before_save { email.downcase! } # = self.email=email.downcase
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

    # declares usage of stuff.
  # def own(stuff)
  #   owning << stuff
  # end
  #
  # # undeclares usage of stuff
  # def disown(stuff)
  #   owning.delete(stuff)
  # end
  #
  # # Returns true if the current user is using the stuff.
  # def owning?(stuff)
  #   owning.include?(stuff)
  # end
end
