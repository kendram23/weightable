users = [
  {first_name: "Test", 
   last_name: "User 2", 
   email: 'test@test.com', 
   password: 'testtest',
   password_confirmation: 'testtest',
   user_image: 'http://placecage.com/200/300',  
   about: 'Hodor, hodor. Hodor. Hodor, hodor, hodor. Hodor hodor, hodor. Hodor hodor, hodor, hodor hodor. Hodor, hodor hodor...',
   start_weight: '300',
   goal_weight: '200'},
  {first_name: "Test", 
   last_name: "User 3", 
   email: 'test3@test.com', 
   password: 'testtest',
   password_confirmation: 'testtest',
   user_image: 'http://placecage.com/200/300',  
   about: 'Hodor, hodor. Hodor. Hodor, hodor, hodor. Hodor hodor, hodor. Hodor hodor, hodor, hodor hodor. Hodor, hodor hodor...',
   start_weight: '300',
   goal_weight: '200'},
  {first_name: "Wolfgang Amadeus", 
   last_name: "Truckstop III", 
   email: 'truckstop@test.com', 
   password: 'testtest',
   password_confirmation: 'testtest',
   user_image: 'http://placecage.com/200/300',  
   about: 'Hodor, hodor. Hodor. Hodor, hodor, hodor. Hodor hodor, hodor. Hodor hodor, hodor, hodor hodor. Hodor, hodor hodor...',
   start_weight: '300',
   goal_weight: '200'},
]

users.each do |user|
  User.create(
    first_name: user[:first_name],
    last_name: user[:last_name],
    email: user[:email],
    password: user[:password],
    password_confirmation: user[:password_confirmation],
    user_image: user[:user_image],
    about: user[:about],
    start_weight: user[:start_weight],
    goal_weight: user[:goal_weight]
  )
end