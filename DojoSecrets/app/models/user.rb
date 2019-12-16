class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates_presence_of :name, :email, presence: true, :message => "cannot be left blank!"
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, presence: true, on: :create
  validates :password, length: { minimum: 6 }
    before_save :email_lowercase
    def email_lowercase
      email.downcase!
    end
end
