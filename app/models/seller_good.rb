class SellerGood < ApplicationRecord
    validates :submit_date, presence:true
    belongs_to :good
end
