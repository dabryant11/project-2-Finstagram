class User < ApplicationRecord
    has_many :pictures
    has_many :comments

    has_secure_password

    validates :username, presence: true
    # validates :username, inclusion: {in: ["!","@","#","$"]}
    
end
