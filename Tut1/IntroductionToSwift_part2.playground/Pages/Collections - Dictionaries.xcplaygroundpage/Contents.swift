/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)

 ---

 # Playground: Dictionaries in Swift
 ## Overview
 This page explores **Dictionaries** – collections of **key-value pairs** in Swift.
 */

import Foundation

//: ---
//: ## Declaring Dictionaries

// Explicit type
var person: [String: Any] = [
    "name": "John Doe",
    "age": 30,
    "isStudent": false
]

// Type inference
var capitals = [
    "France": "Paris",
    "Japan": "Tokyo",
    "Brazil": "Brasília"
]

print("Person: \(person)")
print("Capitals: \(capitals)")

// Empty
var emptyDict: [Int: String] = [:]
var anotherEmptyDict = [String: String]()

// 📝 Task: Make your own dictionary of 3 favourite movies with their release years.
var myDictionary:[String : Int] = [
    "abc" : 2011,
    "asd" : 2001,
    "qwe" : 2004
]
print("My Movies: \(myDictionary)")

//: ## Adding & Accessing
person["occupation"] = "Developer"
person["city"] = "New York"
print("After adding: \(person)")

if let name = person["name"] {
    print("Name: \(name)")
}
print("Country: \(person["country"] ?? "Not specified")")

// 📝 Predict: What happens if you access a non-existent key?


//: ## Updating & Removing
person["age"] = 31
person["isStudent"] = true
print("Updated: \(person)")

let removed = person.removeValue(forKey: "city")
print("Removed city = \(removed ?? "nil")")

// 📝 Challenge: Add a new key “hobby” and remove “occupation”.


//: ## Dictionary Properties
print("Count: \(person.count)")
print("Keys: \(person.keys)")
print("Values: \(person.values)")

person.removeAll()
print("Cleared person: \(person)")

// Re-initialize
person = [
    "name": "Jane Smith",
    "age": 28,
    "isStudent": true,
    "occupation": "Designer"
]
print("Re-initialized: \(person)")


//: ## Iterating Dictionaries
print("\nAll details:")
for (key, value) in person {
    print("\(key): \(value)")
}

print("Keys only:")
for key in person.keys { print("- \(key)") }

print("Values only:")
for value in person.values { print("- \(value)") }

var count = 0
for _ in person { count += 1 }
print("Property count: \(count)")

// 📝 Task: Loop through `person` and print only String values.


//: ## Common Operations
let keysArray = Array(person.keys)
let valuesArray = Array(person.values)
print("Keys array: \(keysArray)")
print("Values array: \(valuesArray)")

let studentInfo = person.filter { $0.key == "isStudent" || $0.key == "name" }
print("Student info: \(studentInfo)")

var additionalInfo = ["hobby": "Reading", "language": "Swift"]
person.merge(additionalInfo) { current, _ in current }
print("After merging: \(person)")

// 📝 Challenge: Try merging with conflicting keys. Which value wins?


//: ## Best Practices
// Instead of [String: Any], prefer specific value types.
struct Person {
    var name: String
    var age: Int
    var isStudent: Bool
}

var typedPeople: [String: Person] = [
    "user1": Person(name: "Alice", age: 25, isStudent: true),
    "user2": Person(name: "Bob", age: 30, isStudent: false)
]

for (id, data) in typedPeople {
    print("\(id): \(data.name), \(data.age) years old")
}

// 📝 Predict: What happens if you try to access `typedPeople["user3"]`?


//: ## Practice Exercises
print("\n--- Practice ---")

// 1. Country populations
var populations = [
    "China": 1_439_323_776,
    "India": 1_380_004_385,
    "USA": 331_002_651
]
print("Populations: \(populations)")

// 2. Add and update
populations["Brazil"] = 212_559_417
populations["USA"] = 332_000_000
print("Updated: \(populations)")

// 3. Total population
let totalPop = populations.values.reduce(0, +)
print("Total population: \(totalPop)")

// 4. Count countries
var countryCount = 0
for _ in populations { countryCount += 1 }
print("Number of countries: \(countryCount)")

// 5. Check existence
print("Contains China? \(populations.keys.contains("China"))")
print("Contains Canada? \(populations.keys.contains("Canada"))")

// 6. From arrays
let fruitNames = ["Apple", "Banana", "Orange"]
let fruitPrices = [1.99, 0.99, 2.49]
let fruitDict = Dictionary(uniqueKeysWithValues: zip(fruitNames, fruitPrices))
print("Fruit prices: \(fruitDict)")

/*:
 ---
 ## Key Takeaways
 - Dictionaries = **unordered key-value pairs**.
 - Keys must be **unique**.
 - Access is optional → use `??` for defaults.
 - Add/update: `dict[key] = value`.
 - Remove: `dict[key] = nil` or `removeValue(forKey:)`.
 - Prefer **typed dictionaries** over `[String: Any]` for safety.
 */
