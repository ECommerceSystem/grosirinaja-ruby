class User < ApplicationRecord
    validates :name, :email, :password, :level, presence:true
    has_many :good
end                                              