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

    "users": [
        {
            "id": 1,
            "name": "Anita Cocktail",
            "age": 27,
            "gender": "female",
            "smoker": "yes",
            "hasKids": "yes",
            "tagline": "I'm ready to find the one".,
            "image": "https://images.unsplash.com/photo-1534751516642-a1af1ef26a56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
        },

        {
            "id": 2,
            "name": "Kumar Joseph",
            "age": 29,
            "gender": "male",
            "smoker": "no",
            "hasKids": "no",
            "tagline": "Willing to lie about how we met".,
            "image": "https://images.unsplash.com/photo-1546434946-3e8a5564945d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
        },

        {
            "id": 3,
            "name": "Sasha Buttercup",
            "age": 26,
            "gender": "female",
            "smoker": "no",
            "hasKids": "yes",
            "tagline": "Kiss me and buy me tacos.",
            "image": "https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
        },

        {
            "id": 4,
            "name": "Jay Smitty",
            "age": 32,
            "gender": "male",
            "smoker": "no",
            "hasKids": "no",
            "tagline": "I'm smart and witty, looking for someone to play video games with."
            "image": "https://images.unsplash.com/photo-1567601266452-97420092c012?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
        },

        {
            "id": 5,
            "name": "Melody Fierce",
            "age": 30,
            "gender": "female",
            "smoker": "no",
            "hasKids": "no",
            "tagline": "Seeking someone to do life with".,
            "image": "https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
        },

        {
            "id": 6,
            "name": "Chad Brown",
            "age": 45,
            "gender": "male",
            "smoker": "yes",
            "hasKids": "yes",
            "tagline": "In my mind I sing just like Sinatra".,
            "image": "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
        },

        {
            "id": 7,
            "name": "Stephanie Grace",
            "age": 24,
            "gender": "female",
            "smoker": "yes",
            "hasKids": "no",
            "tagline": "I am thankful for laughter, except when milk comes out of my nose!",
            "image": "https://images.unsplash.com/photo-1519742866993-66d3cfef4bbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=562&q=80"
        },

        {
            "id": 8,
            "name": "Brett Harmony",
            "age": 26,
            "gender": "male",
            "smoker": "no",
            "hasKids": "yes",
            "tagline": "A Gentleman and A Scholar.",
            "image": "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
        },

        {
            "id": 9,
            "name": "Samantha Ohh",
            "age": 28 ,
            "gender": "female",
            "smoker": "yes",
            "hasKids": "no",
            "tagline": "Looking for my Netflix and Chill.",
            "image": "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
        },

        {
            "id": 10,
            "name": "George Hamilton",
            "age": 40,
            "gender": "male",
            "smoker": "no",
            "hasKids": "yes",
            "tagline": "I pay my mortgage and I wear socks that match.",
            "image": "https://images.unsplash.com/photo-1561677843-39dee7a319ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
        },
    ]
    users.each do |user|
        User.create(user)
    end
        puts "Users were created"

    interests = 
    ["exercise", "cooking", "hiking", "photography", "knitting", "family-oriented", "introvert", "extrovert", "music", "traveling",
        "art", "gaming", "love language", "liberal", "conservative", "moderate", "animal lover", "volunteering", "party lover", "religion", 
        "sports", "programming", "blogging", "dancing", "texter", "talker", "gardening", "sewing", "knitting", "skateboarding", "shoppers", 
        "movie lover"]
 
 interests.each {|interest| Interest.create(name: interest)}   
puts "Interests was created"

preferences = ["male", "female", "both"]


10.times do |x|
    UserInterest.create(user: User.all.sample.unique, interest: Interest.all.sample.unique)
end

10.times do |x|
    UserPreference.create()
end