Person.destroy_all
# add development data
# use create! so we know if something goes wrong
Person.create! [
  { first_name: "Kalman", last_name: "Smith", age: 33 },
  { first_name: "John", last_name: "Whatever", age: 27 },
  { first_name: "Michael", last_name: "Smith", age: 15 },
  { first_name: "Josh", last_name: "Oreck", age: 57 },
  { first_name: "John", last_name: "Smith", age: 27 },
  { first_name: "Bill", last_name: "Gates", age: 75 },
  { first_name: "LeBron", last_name: "James", age: 30 }
]
