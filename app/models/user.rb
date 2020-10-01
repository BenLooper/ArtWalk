class User < ApplicationRecord
    has_many :posts
    has_many :genres, through: :posts
    has_many :comments
    has_many :snaps
    has_many :slaps 
    has_many :backs
    
    has_many :backer_backs, foreign_key: :backee_id, class_name: "Back"
    has_many :backers, through: :backer_backs, source: :backer

    has_many :backee_backs, foreign_key: :backer_id, class_name: "Back"
    has_many :backees, through: :backee_backs, source: :backee 
    has_secure_password


    def backee_posts
        self.backees.collect{|user| user.posts}.flatten
    end 

    def backed_profile?(profile)
        self.backees.include?(profile)
    end 


end 
