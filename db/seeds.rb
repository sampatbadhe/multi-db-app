# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: "Luke", email: 'luke@example.com')

event1 = Event.create(name: 'Event 1', date: Date.today, user: user1)

Message.create(title: "Title 1", body: 'Body 1', event: event1)
Message.create(title: "Title 2", body: 'Body 2', event: event1)

event2 = Event.create(name: 'Event 2', date: Date.today, user: user1)

Message.create(title: "Title 3", body: 'Body 3', event: event2)
Message.create(title: "Title 4", body: 'Body 4', event: event2)


user2 = User.create(name: "Jhon", email: 'jhon@example.com')

event3 = Event.create(name: 'Event 3', date: Date.today, user: user2)

Message.create(title: "Title 1", body: 'Body 1', event: event3)
Message.create(title: "Title 2", body: 'Body 2', event: event3)

user3 = User.create(name: "Jill", email: 'jill@example.com')

event4 = Event.create(name: 'Event 4', date: Date.today, user: user3)
