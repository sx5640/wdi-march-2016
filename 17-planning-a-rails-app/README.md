# Analyzing and planning a new Rails app

Today we will be looking at how to go about planning and thinking through a Rails application. We will be talking about some of the things that need to be done before you start coding.

## Agenda
After this lesson, you will know:

  * User Stories
  * Planning
  * Mockups
  * Modelling


## User Stories

As a ...
I want ...
So that...

- Who are the users?
- What do they need to do?
- Why do they need it? What is the goal they're trying to accomplish?







### EXAMPLES
- As a user, I want to be able to sort restaurants by price, location, cuisine, reviews, etc.
- As a user, I want to be able to write reviews of restaurants
- As a user, I want to be able to see others' reviews of restaurants
- As a user, I want to be able to rate a restaurant
- As a user, I want to be able to share restaurant info
- As a user, I want to be able to see photos of the restaurant and food
- As a user, I want to be able to save favourite restaurants
- As a user, I want to be able to update a reservation (time or number of people)
- As a user, I want to receive a reminder of upcoming reservations
- As a user, I want to be suggested restaurants
- As an owner, I want to be able to rate the customers!
- As an owner, I want to be able to send customers promotions
- As an owner, I want analytics on reservations
- As an owner, I want to receive feedback from customers
- As an owner, I want to be able to create promotions
- As an owner, I want to see my competition in the area







## Prioritize
1. NEED TO HAVE
- As a user, I want to be able to see a list of restaurants
- As an owner, I want to be able to create a restaurant
- As an owner, I want to be able to set the capacity
- As a user, I want to be able to sign up
- As a user, I want to be able to book a table
- As a user, I want to be able to cancel a reservation
- As a user, I want to be able to see the hours
- As a user, I want to be able to see the contact details
- As an owner, I want to be able to see the reservations for my restaurant
- As a user, I want to receive an email confirmation of my reservation

2. NICE TO HAVE
- As a user, I want to be able to see the menu

3. HAPPY TO HAVE














## Define our key words
Reservation
- Time
- Date
- Party Size
- Restaurant
- User

User
- Diner
- Owner




## Tough decisions about making a reservation
- Diners and owners need to remember the reservation details
- Length of stay (Duration)
- No shows or showing up with a different party size
- Table sizes and layouts
- Difficult or impossible to contact diners
- Walk-ins, phone bookings, etc.
- Overlapping bookings




## Planning
- Make assumptions
  - Only online bookings
  - Set a fixed duration
  - Only accept bookings on the hour
  - Party sizes always match reservation
  - Book seats, not tables!

- Simplify!
  - Anyone can make a restaurant

- Make mockups












## Modelling
- Pen and paper / Whiteboard
- Create models
- Draw relationships
