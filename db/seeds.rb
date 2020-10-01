User.destroy_all
Post.destroy_all
Genre.destroy_all
Comment.destroy_all
Snap.destroy_all
Slap.destroy_all
Back.destroy_all


# Users 
# 
10.times do                                                    
  User.create(
    username:Faker::Artist.name,
    password:Faker::Number.number.to_s,
    bio:Faker::Lorem.paragraph
  )
end 

# Genres
10.times do 
    Genre.create(
        style:Faker::Nation.nationality
    )
end 

#Posts
10.times do 
    Post.create(
    image_url:Faker::LoremPixel.image,
    description:Faker::Lorem.sentence, 
    user:User.all.sample, 
    genre:Genre.all.sample
    )
end

#Comments
10.times do 
    Comment.create(
        content:Faker::Lorem.sentence,
        user:User.all.sample,
        post:Post.all.sample
    )
end 

#Snaps
10.times do 
    Snap.create(
        user:User.all.sample,
        post:Post.all.sample
    )
end 


#Slaps
10.times do 
    Slap.create(
        user:User.all.sample,
        post:Post.all.sample
    )
end 


#Backs
20.times do 
    Back.create(
        backer:User.all.sample,
        backee:User.all.sample
    )
end 

