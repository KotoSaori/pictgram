class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 15 }
    validates :email, presence: true,  format: { with: /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\z/i}
    validates :password, length: { in: 8..32 }, format: { with: /\A(?=.*?[A-Za-z])(?=.*?[0-9])[A-Za-z0-9]\z/i}
  
    has_secure_password
end
