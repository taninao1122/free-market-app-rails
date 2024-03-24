class Product < ApplicationRecord
    belongs_to :users
    validates :name, presence: true, length: {maximum: 64}
    validates :price, presence: true
    validates :description, length: {maximum: 256}
end
