class User < ApplicationRecord
    include Clearance::User
        validates :name, :email, :password, :level, presence:true
        validates_uniqueness_of :email
        has_many :good
        enum level: { admin: 0, seller: 1, buyer: 2,  }
end