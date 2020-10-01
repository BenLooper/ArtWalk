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
    Notifications tab (activity tab in insta)

Deliverables:
    Users:
        - Can login w/ a username and password --DONE 
            - Can logout -- will redirect to login --DONE 
            - Add validations for sign up (unique pass/username)
            - Home page (Feed) displays only posts by users that logged in user backs (their specific home page) --DONE
            - Notifications page displays any and all activity pertaining to the logged in user 
            - Non logged in users can't access these pages --DONE 

        - Can back other users --DONE
            - Can forget other users that they backed --DONE

        - Can create new posts 
            - takes in an image url and a description --DONE
            - when applying a genre to a post, user can choose to make a new genre
            - user can edit posts they've made --DONE
            - user can delete posts they've made --DONE
            - add validations

        - Can comment on posts
            - user can edit comments they've made 
            - user can delete comments they've made
            - user can snap/slap a comment 
            - add validations


        - Can snap a post once per user, can't snap if already slapped
            - can unsnap a post

        - Can slap a post once per user, can't slap if already snapped
            - can unslap a post


        - Can DM other users
       