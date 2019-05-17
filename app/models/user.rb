class User < ApplicationRecord
    has_many :microposts
    before_save { self.email = email.downcase }
    validates :name, length: {maximum: 15}
    validates:email,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },
    uniqueness: { case_sensitive: false }
    has_secure_password
    validates:password, presence: true, length:{minimum: 6}

  
end
