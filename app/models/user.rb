class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 15 }
    validates :email, presence: true, format: { with: /[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/ }
    PW_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i 
    validates :password, presence: true, format: { with: PW_REGEX }
    # 自分の誤りコードvalidates :email, presence: true,  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    # 自分の誤りコードvalidates :password, length: { in: 8..32 }, format: { with: /\A(?=.*?[A-Za-z])(?=.*?[0-9])[A-Za-z0-9]\z/i}
  
    has_secure_password
    
    has_many :topics
end


