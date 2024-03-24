class User < ApplicationRecord
    validates :name, length: {maximum: 64}, presence: true
    validates :email, length: {in: 3..32}, presence: true
    validates :password, length: { in: 6..20 }, presence: true
    validates :profile_image, presence: true

    #TODO passwordを暗号化
end
