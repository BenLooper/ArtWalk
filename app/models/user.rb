class User < ApplicationRecord
    has_many :posts
    has_many :genres, through: :posts
    has_many :comments
    has_many :slaps 
    has_many :backs

    has_secure_password
end
