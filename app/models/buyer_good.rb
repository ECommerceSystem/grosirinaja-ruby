class BuyerGood < ApplicationRecord
    validates :total_price, :quantity, :buy_date, presence:true
    belongs_to :good
    belongs_to :user
end                                                                                             