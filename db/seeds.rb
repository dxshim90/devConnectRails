# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


skills = ["Javascript", "Python", 'React']

skills.each do |skill|
    Skill.create(name: skill)
end


# @profile = Profile.create(username: "Test", description: "TEST ETSTEST ET STES", role: "Tester")

# Post.create(profile_id: Profile.last.id, title: "Test_post", body: "This is a test post")
# Comment.create(profile_id: Profile.last.id, post_id: Post.last.id, content: "This is a test comment")

