class Post < ApplicationRecord
    belongs_to :user
    belongs_to :genre
    has_many :comments
    has_many :snaps
    has_many :slaps 
    has_many :backs

    def user_name
        self.user.username
    end 

    def snap_number
        self.snaps.count.to_s
    end 

    def slap_number
        self.slaps.count.to_s
    end 

end
