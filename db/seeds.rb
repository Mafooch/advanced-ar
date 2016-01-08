Person.destroy_all
# add development data
# use create! so we know if something goes wrong
Person.create! [
  { first_name: "Kalman", last_name: "Smith", age: 33, login: "kman", pass: "abc123" },
  { first_name: "John", last_name: "Whatever", age: 27, login: "john1", pass: "123abc" },
  { first_name: "Michael", last_name: "Smith", age: 15, login: "mike", pass: "not_telling" },
  { first_name: "Josh", last_name: "Oreck", age: 57, login: "josh", pass: "password1" },
  { first_name: "John", last_name: "Smith", age: 27, login: "john2", pass: "no_idea" },
  { first_name: "Bill", last_name: "Gates", age: 75, login: "bill", pass: "windows3.1" },
  { first_name: "LeBron", last_name: "James", age: 30, login: "bron", pass: "need more rings" }
]
