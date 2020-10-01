class Comment < ApplicationRecord
    belongs_to :user 
    belongs_to :post 

    def user_name
        self.user.username 
    end 

    def post_user_name
        self.post.user.username
    end

end
