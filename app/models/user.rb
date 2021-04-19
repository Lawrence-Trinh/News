class User < ApplicationRecord
  has_many :posts
  has_many :comments
  attr_accessor :remember_token
  before_save { self.email = email.downcase }

  validates :name,  presence: true, length: { maximum: 50 }, :if => :name

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }, :if => :email

  has_secure_password 
  validates :password, presence: true, length: { minimum: 8, maximum: 20 }, :if => :password

  # mobile should only be numbers
  VALID_MOBILE_REGEX = /\A^[0-9]+$\z/ 
  validates :mobile, presence: true, length: { minimum: 10, maximum: 13 }, 
                     format: { with: VALID_MOBILE_REGEX }, :if => :mobile

  mount_uploader :avatar, AvatarUploader
  mount_uploader :verification, VerificationUploader

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost) 
  end

  # Returns a random token.
  def User.new_token 
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token) 
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # Forgets a user.
  def forget 
    update_attribute(:remember_digest, nil)
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.forgot_password(self).deliver
  end
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end