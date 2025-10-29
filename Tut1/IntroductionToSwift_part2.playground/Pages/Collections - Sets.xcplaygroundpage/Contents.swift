/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)

 ---

 # Playground: Sets in Swift
 ## Overview
 This page explores **Sets** – unordered collections of **unique values** in Swift.
 */

import Foundation

//: ---
//: ## Declaring Sets
var uniqueNumbers: Set<Int> = [1, 2, 3, 4, 5]   // explicit type
var fruits: Set = ["Apple", "Banana", "Orange", "Apple"] // duplicates removed

var emptySet: Set<String> = []
var anotherEmptySet = Set<Int>()

print("Unique numbers: \(uniqueNumbers)")
print("Fruits (no duplicates): \(fruits)")

// 📝 Task: Add a new Set of colours and print it.


//: ## Adding & Checking Elements
uniqueNumbers.insert(6)
uniqueNumbers.insert(3)   // duplicate ignored
fruits.insert("Mango")

print("After insertions - Numbers: \(uniqueNumbers), Fruits: \(fruits)")

print("Contains Apple? \(fruits.contains("Apple"))")
print("Contains Grape? \(fruits.contains("Grape"))")

// 📝 Predict: What will happen if you insert "Apple" again?


//: ## Removing Elements
if let removed = fruits.remove("Banana") {
    print("Removed: \(removed)")
}
print("After removal: \(fruits)")

// Order is **unpredictable**
if let firstElement = fruits.first {
    print("Random element: \(firstElement)")
}

// 📝 Task: Try removing an element that isn’t in the set. What happens?


//: ## Clearing a Set
print("\nBefore clearing numbers: \(uniqueNumbers)")
uniqueNumbers.removeAll()
print("After clearing: \(uniqueNumbers)")

// Reinitialize
uniqueNumbers = [10, 20, 30, 40, 50]
fruits = ["Apple", "Banana", "Orange", "Mango", "Grapes"]
print("Re-initialized sets: \(uniqueNumbers), \(fruits)")


//: ## Iterating Through Sets
print("\nIterating all fruits:")
for fruit in fruits {
    print("- \(fruit)")
}

print("\nSorted iteration:")
for fruit in fruits.sorted() {
    print("- \(fruit)")
}

print("\nUsing forEach:")
fruits.forEach { print("Fruit: \($0)") }

// 📝 Challenge: Print only fruits starting with “A”.


//: ## Mathematical Set Operations
let evenNumbers: Set = [2, 4, 6, 8, 10]
let primeNumbers: Set = [2, 3, 5, 7, 11]
let oddNumbers: Set = [1, 3, 5, 7, 9]

print("\nUnion (even ∪ odd): \(evenNumbers.union(oddNumbers).sorted())")
print("Intersection (even ∩ prime): \(evenNumbers.intersection(primeNumbers))")
print("Symmetric diff (prime △ odd): \(primeNumbers.symmetricDifference(oddNumbers).sorted())")
print("Subtraction (prime − even): \(primeNumbers.subtracting(evenNumbers).sorted())")

// 📝 Task: Create a Set of multiples of 5. Find its intersection with `oddNumbers`.


//: ## Set Relationships
let smallNumbers: Set = [1, 2, 3]
let mediumNumbers: Set = [1, 2, 3, 4, 5]

print("\nIs small ⊂ medium? \(smallNumbers.isSubset(of: mediumNumbers))")
print("Is medium ⊃ small? \(mediumNumbers.isSuperset(of: smallNumbers))")
print("Are even ⊥ odd (disjoint)? \(evenNumbers.isDisjoint(with: oddNumbers))")

// 📝 Quick Check: Is `primeNumbers` a subset of `oddNumbers`?


//: ## Practical Use Cases
// Removing duplicates
let duplicates = [1, 2, 2, 3, 4, 4, 5]
let unique = Array(Set(duplicates)).sorted()
print("\nRemoved duplicates: \(unique)")

// Membership testing (fast)
let searchFruits: Set = ["Apple", "Banana", "Orange"]
let userFruits: Set = ["Apple", "Grapes", "Mango"]
print("Common fruits: \(searchFruits.intersection(userFruits))")

// 📝 Challenge: Use a Set to check if a password contains at least one digit.


//: ## Practice Exercises
print("\n--- Practice ---")

// 1. Create a set of vowels, check membership
let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
print("Is 'e' a vowel? \(vowels.contains("e"))")

// 2. Find common elements
let setA: Set = [1,2,3,4,5]
let setB: Set = [4,5,6,7,8]
print("Common: \(setA.intersection(setB).sorted())")

// 3. Remove duplicates from array
let nums = [1,1,2,2,3,3]
print("Unique nums: \(Array(Set(nums)).sorted())")

// 4. Count evens using underscore
var evenCount = 0
for _ in setA.filter({ $0 % 2 == 0 }) {
    evenCount += 1
}
print("Even count in setA: \(evenCount)")

// 5. Subset check
print("Is setA ⊂ setB? \(setA.isSubset(of: setB))")

// 6. Create a set from array literal
let colorSet: Set = ["red","green","blue","red"]
print("Unique colors: \(colorSet.sorted())")

/*:
 ---
 ## Key Takeaways
 - Sets store **unique, unordered values**.
 - Duplicate values are removed automatically.
 - Very fast for **membership tests**.
 - Support **math-like operations** (union, intersection, difference).
 - Use for **removing duplicates**, password validation, and uniqueness checks.
 */
