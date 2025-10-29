/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)

 ---

 # Playground: Collections in Swift
 ## Overview
 This page explores **Arrays** and common operations in Swift.
 */

import Foundation

//: ---
//: ## Arrays
//: Ordered collections of values of the same type.

// Explicit type
var fruits: [String] = ["Apple", "Banana", "Orange"]

// Type inference (recommended)
var numbers = [1, 2, 3, 4, 5]
var temperatures: [Double] = [23.5, 18.7, 32.1]

print("Numbers type: \(type(of: numbers)), values: \(numbers)")

// Empty arrays
var emptyArray: [String] = []
var anotherEmptyArray = [Int]()

// 📝 Task: Create your own array of 3 colours and print it.
//let color = ["Red", "Yellow", "Pink"]
//print(color)

//: ## Adding & Accessing Elements
print("Initial fruits: \(fruits)")

fruits.append("Grape")              // add at end
fruits.insert("Mango", at: 1)       // insert at index
fruits += ["Strawberry", "Blueberry"]

print("After adding: \(fruits)")

print("First fruit: \(fruits[0])")
print("Last fruit: \(fruits[fruits.count - 1])")

if let safeFirst = fruits.first {
    print("Safe first: \(safeFirst)")
}

// 📝 Predict: What happens if you try `fruits[100]`?
//Swift/ContiguousArrayBuffer.swift:691: Fatal error: Index out of range

//: ## Modifying Arrays
fruits[2] = "Pineapple"   // update
print("After update: \(fruits)")

let removed = fruits.remove(at: 0)  // remove index 0
print("Removed: \(removed)")
print("After removal: \(fruits)")

fruits.removeLast()
print("After removing last: \(fruits)")

// 📝 Task: Try removing all items and check if array is empty.
//fruits.removeAll()
//print(fruits)

//: ## Array Properties
print("Count: \(fruits.count)")
print("Is empty? \(fruits.isEmpty)")

// Re-initialize
fruits = ["Apple", "Banana", "Orange", "Grape", "Mango"]
print("Re-initialized fruits: \(fruits)")


//: ## Iterating Arrays
print("\nLoop with index + value:")
for (index, fruit) in fruits.enumerated() {
    print("Index \(index): \(fruit)")
}

print("\nLoop without index:")
for fruit in fruits {
    print("- \(fruit)")
}

print("\nUsing underscore (no iterator needed):")
for _ in fruits {
    print("🍎")
}

print("\nUsing forEach:")
fruits.forEach { print("Fruit: \($0)") }

// 📝 Challenge: Print only fruits with more than 5 letters.


//: ## Functional Operations
numbers = [1,2,3,4,5,6,7,8,9,10]

let even = numbers.filter { $0 % 2 == 0 }
print("\nEven numbers: \(even)")

let squared = numbers.map { $0 * $0 }
print("Squared: \(squared)")

let total = numbers.reduce(0, +)
print("Sum: \(total)")

let sortedFruits = fruits.sorted()
print("Sorted fruits: \(sortedFruits)")

let descending = numbers.sorted(by: >)
print("Descending numbers: \(descending)")

// 📝 Task: Use `map` to convert fruits to uppercase.


//: ## Multi-Dimensional Arrays
var matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

print("\nMatrix rows:")
for row in matrix { print(row) }

print("Element [1][2]: \(matrix[1][2])")  // should be 6

// 📝 Challenge: Change element at [0][0] to 99 and print matrix again.


//: ## Practice Exercises
print("\n--- Practice ---")

// 1. Create array of 5 names & print uppercase
let names = ["Alice", "Bob", "Charlie", "Diana", "Eve"]
for name in names { print(name.uppercased()) }

// 2. Find sum of numbers
let testNumbers = [10, 20, 30, 40, 50]
print("Sum = \(testNumbers.reduce(0,+))")

// 3. Filter numbers > 25
print("Greater than 25: \(testNumbers.filter{$0>25})")

// 4. Loop with underscore
for _ in testNumbers { print("Processing item...") }

// 5. Check if array contains value
let searchFruit = "Orange"
print("Contains Orange? \(fruits.contains(searchFruit))")

/*:
 ---
 ## Key Takeaways
 - Arrays are **ordered collections**
 - Use **type inference** for cleaner code
 - Use `.first` and `.last` for safe access
 - Use **filter / map / reduce** for transformations
 - Arrays are **value types**
 */
