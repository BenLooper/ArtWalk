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

    def snapped_users
        self.snaps.collect{|snap| snap.user}
    end 

    def snapped_user?(user)
        self.snapped_users.include?(user)
    end 

    def slapped_users
        self.slaps.collect{|slap| slap.user}
    end 

    def slapped_user?(user)
        self.slapped_users.include?(user)
    end
end
