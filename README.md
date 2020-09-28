# README

Models: 
    Users 
        - has_many :posts
        - has_many :genres, through: :post
        - has_many :comments
            #want to find all the posts we've commented on: User.comments.post.each { |post| post.name}
        - has_many :snaps
        - has_many :slaps

    Posts (art)
        - belongs_to :user 
        - belongs_to :genre
        - has_many :comments
        - has_many :snaps
        - has_many :slaps

    Genres(or 'tags')
        - has_many :posts
        - has_many :users, through: :posts

    Snaps(likes)
        - belongs_to :user
        - belongs_to :post

    Slaps(dislikes)
        - belongs_to :user
        - belongs_to :post

    Comments(input)
        - belongs_to :user
        - belongs_to :post


Pages: 
    Home Page (shows artists you back)
    Portfolio Page (profile page)
    Explore
    Notifications tab (activity tab in insta)%        