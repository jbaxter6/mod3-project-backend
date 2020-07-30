# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Interest.destroy_all
Preference.destroy_all

anita = User.create(
    name: "Anita Cocktail",
    age: 27,
    gender: "female",
    smoker: "yes",
    has_kids: "yes",
    tagline: "I'm ready to find the one.",
    image: "https://images.unsplash.com/photo-1534751516642-a1af1ef26a56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
)
kumar = User.create(
    name: "Kumar Joseph",
    age: 29,
    gender: "male",
    smoker: "no",
    has_kids: "no",
    tagline: "Willing to lie about how we met.",
    image: "https://images.unsplash.com/photo-1546434946-3e8a5564945d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
)
sasha = User.create(
    name: "Sasha Buttercup",
    age: 26,
    gender: "female",
    smoker: "no",
    has_kids: "yes",
    tagline: "Kiss me and buy me tacos.",
    image: "https://images.unsplash.com/photo-1495846101638-bd8e9a23f8ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
)
jay = User.create(
    name: "Jay Smitty",
    age: 32,
    gender: "male",
    smoker: "no",
    has_kids: "no",
    tagline: "I'm smart and witty, looking for someone to play video games with.",
    image: "https://images.unsplash.com/photo-1567601266452-97420092c012?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
)
melody = User.create(
    name: "Melody Fierce",
    age: 30,
    gender: "female",
    smoker: "no",
    has_kids: "no",
    tagline: "Seeking someone to do life with.",
    image: "https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
)
chad = User.create(
    name: "Chad Brown",
    age: 45,
    gender: "male",
    smoker: "yes",
    has_kids: "yes",
    tagline: "In my mind I sing just like Sinatra.",
    image: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
)
stephanie = User.create(
    name: "Stephanie Grace",
    age: 24,
    gender: "female",
    smoker: "yes",
    has_kids: "no",
    tagline: "I am thankful for laughter, except when milk comes out of my nose!",
    image: "https://images.unsplash.com/photo-1519742866993-66d3cfef4bbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=562&q=80"
)
brett = User.create(
    name: "Brett Harmony",
    age: 26,
    gender: "male",
    smoker: "no",
    has_kids: "yes",
    tagline: "A Gentleman and A Scholar.",
    image: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
)
samantha = User.create(
    name: "Samantha Ohh",
    age: 28 ,
    gender: "female",
    smoker: "yes",
    has_kids: "no",
    tagline: "Looking for my Netflix and Chill.",
    image: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
)
george = User.create(
    name: "George Hamilton",
    age: 40,
    gender: "male",
    smoker: "no",
    has_kids: "yes",
    tagline: "I pay my mortgage and I wear socks that match.",
    image: "https://images.unsplash.com/photo-1545559299-a7cf838c4857?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
)
        puts "Users were created"

    interests = 
    ["exercise", "cooking", "hiking", "photography", "knitting", "family-oriented", "introvert", "extrovert", "music", "traveling",
        "art", "gaming", "love language", "liberal", "conservative", "moderate", "animal lover", "volunteering", "party lover", "religion", 
        "sports", "programming", "blogging", "dancing", "texter", "talker", "gardening", "sewing", "knitting", "skateboarding", "shoppers", 
        "movie lover"]
 
 interests.each {|interest| Interest.create(name: interest)}   
puts "Interests was created"

preferences =  [ { sex: "female"}, {sex: "male"},{sex: "non-binary"} ]
female = Preference.create(sex: "female")
male = Preference.create(sex: "male")
other = Preference.create(sex: "non-binary")

#anita = users[0]
# kumar = users[1]
# sasha = users[2]
# jay = users[3]
# melody = users[4]
# chad = users[5]
# steph = users[6]
# brett = users[7]
# saman = users[8]
# george = users[9]


UserPreference.create(user_id: kumar.id, preference_id: female.id)
UserPreference.create(user_id: sasha.id, preference_id: male.id)
UserPreference.create(user_id: anita.id, preference_id: male.id)
UserPreference.create(user_id: jay.id, preference_id: female.id)
UserPreference.create(user_id: melody.id, preference_id: male.id)
UserPreference.create(user_id: chad.id, preference_id: female.id)
UserPreference.create(user_id: stephanie.id, preference_id: male.id)
UserPreference.create(user_id: brett.id, preference_id: female.id)
UserPreference.create(user_id: george.id, preference_id: other.id)
UserPreference.create(user_id: samantha.id, preference_id: other.id)

Match.create(matcher: anita, matchee: kumar)





10.times do |x|
   UserInterest.create(user_id: kumar.id, interest_id: Interest.all.sample.id)
end

10.times do |x|
    UserInterest.create(user_id: anita.id, interest_id: Interest.all.sample.id)
 end

 10.times do |x|
    UserInterest.create(user_id: sasha.id, interest_id: Interest.all.sample.id)
 end

 10.times do |x|
    UserInterest.create(user_id: jay.id, interest_id: Interest.all.sample.id)
 end

 10.times do |x|
    UserInterest.create(user_id: melody.id, interest_id: Interest.all.sample.id)
 end

 10.times do |x|
    UserInterest.create(user_id: chad.id, interest_id: Interest.all.sample.id)
 end

 10.times do |x|
    UserInterest.create(user_id: stephanie.id, interest_id: Interest.all.sample.id)
 end
 
 10.times do |x|
    UserInterest.create(user_id: brett.id, interest_id: Interest.all.sample.id)
 end
 
 10.times do |x|
    UserInterest.create(user_id: george.id, interest_id: Interest.all.sample.id)
 end

 10.times do |x|
    UserInterest.create(user_id: samantha.id, interest_id: Interest.all.sample.id)
 end


# UserPreference.create(users.id preferences.id)
# puts "preferences and interests created"


#testing file