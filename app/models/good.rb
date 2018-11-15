class Good < ApplicationRecord
    validates :name, :price, :description, presence:true 
    has_many :stock
    has_many :buyer_good
    has_many :seller_good
end