class Good < ApplicationRecord
    validates :name, :price, :description, presence:true
    belongs_to :user
    has_many :stock
end
