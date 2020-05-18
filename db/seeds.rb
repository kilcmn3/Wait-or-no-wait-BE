# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CustomerWaitlist.destroy_all
puts "Creating CustomerWaitLists"
Waitlist.destroy_all
puts "Creating WaitLists"
Owner.destroy_all
puts "Creating owner"
Customer.destroy_all
puts "Creating Customers"


ownerA = Owner.create(username: "1", password: "1", restaurant_name: "1", restaurant_location: "1", restaurant_contact: "1")

# waitlistA = Waitlist.create(waitlist_date: "05/14/2020", owner_id: ownerA.id)

# customerA = Customer.create(name: "dav", contact: "1")

# customer_waitlistA = CustomerWaitlist.create(actual_waitTime: 10, estimate_waitTime: 20, check_inTime: "04:05 PM", party_size: 2, waitlist_id: waitlistA.id, customer_id: customerA.id)