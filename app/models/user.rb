class User < ApplicationRecord
    before_save {self.email = email.downcase}
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates(:name, presence: true)
    validates(:email, presence: true, format: { with: VALID_EMAIL_REGEX }, length: {maximum: 255}, uniqueness: { case_sensitive: false })

    has_secure_password
    validates(:password, length: {minimum: 6})
    
    has_one :profile, dependent: :destroy

end
