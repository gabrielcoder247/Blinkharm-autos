class Customer < ApplicationRecord
    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
    has_secure_password
     # validates email
    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
end
