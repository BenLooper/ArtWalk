class Snap < ApplicationRecord
    belongs_to :user
    belongs_to :post

    def post_user_name
        self.post.user.username
    end

end
