class Post < ApplicationRecord
    belongs_to :user
    belongs_to :genre
    has_many :comments
    has_many :slaps 
    has_many :backs
end
