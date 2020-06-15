Wait or no More Wait App 

# Restaurant Waitlist App - Backend Repository

### Home Page
---
![Alt text](screenshots/Home.PNG?raw=true "Home Page")

### Add Customer
---
![Alt text](screenshots/add-customer.PNG?raw=true "Add Customer")

### View Reservation
---
![Alt text](screenshots/Reservation.PNG?raw=true "Reservation")

### Add Reservation
---
![Alt text](screenshots/add-reservation.PNG?raw=true "Add Reservation")
---
### Profile
---
![Alt text](screenshots/profile.PNG?raw=true "Profile")
### Registeration
---
![Alt text](screenshots/Registeration.PNG?raw=true "Registeration")
---
## Technologies Used

- Ruby
- Ruby on Rails
- PostgresSQL-DB
- Twilio API

# Known Bugs

- Serilization. ex)Sending json datas with associate datas. 
- Controllers have too many logic.(It's better to move the logic to models)

# Improvements

- More authentication logic (Currently there is no validation for login/signup)
- Fix and improve following RESTful principles routes. 
- Sitemap

--------------------------------------------------------------------------------

# User Stories

- Restaurant Owners/Staffs - person taking table bookings

## Restaurant Owner/Waiter - No app

As a user, I can ...
- User can create waitlist  by reservation or walk/in customers.
- User can view daily waitlist from the dashboard.
- User able to edit/delete waitlist after customer’s waitlist is confirmed.
- User will able to deliver a text message to waitlist customer to notify he/she is next.
Advance 
 - User can get live update messages via chat room service 
