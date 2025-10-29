/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)

 # Playground: Week 1 – Introduction to Swift (Part 1)

 This playground introduces **basic Swift data types** and how to use them.
 */
import Foundation

//: ## Variables (mutable)
// Swift uses **camelCase** for naming.
// Example:
var name = "John"
var age = 25
var temperature = 23.5

// Changing variable values:
name = "Jane"
age = 26
temperature = 25.0

// 📝 Task: Uncomment and run the line below. What type does Swift infer for `age`?
//print(type(of: age))
//print(type(of: temperature))
//: ## Constants (immutable)
let birthYear = 1998
let pi = 3.14159
let maxLoginAttempts = 3

// 📝 Task: Try uncommenting the line below. Why does it cause an error?
// birthYear = 2000

//: ## String Interpolation
print("Current values: \(name), \(age), \(temperature)")
print("pi to 2 dp is \(String(format: "%.2f", pi))")

// 📝 Task: Add a new line to print your own name and age using string interpolation.
//name = "Clemon"
//age = 24
//
//print("I am \(name) and I am \(age) years old.")
//: ## Explicit Types
var newName: String = "Amin"
var newAge: Int = 21
var newTemperature: Double = 23.5

// 📝 Predict: What happens if you try to assign `pi` (a Double) to `newAge` (an Int)?
// newAge = pi
//: ## Unicode & Emojis
let emoji = "\u{1F60E}"   // 😎
print(emoji)

let characterApple: Character = "\u{F8FF}" // 
print(characterApple)

// 📝 Task: Replace the code above to print your favourite emoji.
//let favImoji : Character = "\u{1F60A}"
//print(favImoji)
//: ## Comments & Print
// Single-line comment
/*
 Multi-line
 comment1
 comment2
 comment3

 */

// Documentation comment example:
/// Greets a user by name
/// - Parameter name: The name to greet
func greet(name: String) -> String {
    return "Hello, \(name)!"
}
print(greet(name: "Alice"))

// Different print styles:
print("Hello, World!")
print("Name:", name, "Age:", age)   // multiple items
print("Value: \(age)")              // string interpolation
debugPrint("Debug: \(name)")


// 📝 Task: Use `print` to display a sentence with your own details.
//print("I am Clemon Balasuriya")

//: ## Strings
let firstName: String = "Amin"
let lastName: String = "Adam"
let fullName: String = firstName + " " + lastName
print(fullName)

// String operations:
print(fullName.uppercased())
print(fullName.lowercased())
print(fullName.trimmingCharacters(in: .whitespaces))    //take whitespace as character
print(fullName.count)
print(!firstName.isEmpty) // check for empty string

// 📝 Challenge: How can you check if `fullName` contains the character "@" ?
//if(fullName.contains("@")){
//    print("It Contailns @")
//}else{
//    print("It not Contain @")
//}
//: ## Booleans
var flagRaised: Bool = false
var isOver65 = true
var stillWorking = true

// Combine with logical operators:
var hasDisposableIncome = (isOver65 && stillWorking)
var mightHaveDisposableIncome = (!isOver65 || stillWorking)

print(hasDisposableIncome, mightHaveDisposableIncome)

// 📝 Task: Change the values of `isOver65` and `stillWorking`.

//isOver65 = false
//stillWorking = false
//print(hasDisposableIncome, mightHaveDisposableIncome)


// Predict the results for `hasDisposableIncome` and `mightHaveDisposableIncome` before running.

// Other Boolean operations:
let (a, b) = (100, 101)
print(a < b)               // true
print(1 == 2)              // false
print(1 != 2)              // true
print(1 > 2)               // false
print(1 < 2)               // true

// 📝 Quick Check: Which operator would you use to test if two values are NOT equal?
print(a != b)
