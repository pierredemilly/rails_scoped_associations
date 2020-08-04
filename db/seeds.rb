# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

institution = Institution.create(name: "Institution 1")

planning1 = institution.plannings.create(name: "Premier planning")
planning2 = institution.plannings.create(name: "Deuxième planning")

user1 = User.create(email: "user1@gmail.com")
user2 = User.create(email: "user2@gmail.com")
user3 = User.create(email: "user3@gmail.com")

Membership.create(planning: planning1, user: user1)
Membership.create(planning: planning1, user: user2)
Membership.create(planning: planning1, user: user3)

Membership.create(planning: planning2, user: user2)
Membership.create(planning: planning2, user: user3)