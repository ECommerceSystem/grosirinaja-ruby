class BuyerGood < ApplicationRecord
    validates :amount, presence:true
    belongs_to :good
end
