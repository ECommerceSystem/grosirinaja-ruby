class SellerGood < ApplicationRecord
    belongs_to :good
    belongs_to :user
end
