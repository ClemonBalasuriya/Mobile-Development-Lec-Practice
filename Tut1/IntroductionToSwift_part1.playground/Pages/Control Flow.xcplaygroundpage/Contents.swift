/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)

 ---

 # Playground: Control Flow in Swift
 ## Overview
 This playground explores **if statements, switch cases, and loops** in Swift.
 */

//: ---
//: ## Basic If
if 2 > 1 {
    print("Yes, 2 is greater than 1.")
}
// 📝 Task: Change the condition above to `2 < 1`. What prints?
//nothing print

//: ## If–Else
let animal = "Fox"
if animal == "Cat" || animal == "Dog" {
    print("House pet")
} else {
    print("Not a house pet")
}
// 📝 Predict: What happens if you set `animal = "Dog"`?
//print House pet

//: ## Else-If Ladder
var hourOfDay = 12
let timeOfDay: String

if hourOfDay < 6 {
    timeOfDay = "Early morning"
} else if hourOfDay < 12 {
    timeOfDay = "Morning"
} else if hourOfDay < 17 {
    timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
    timeOfDay = "Evening"
} else if hourOfDay < 24 {
    timeOfDay = "Late evening"
} else {
    timeOfDay = "INVALID!"
}
print("Time: \(timeOfDay)")

// 📝 Task: Try changing `hourOfDay` to 23. What do you get?
//print(Late evening)

//: ## Minimum & Maximum
var a = 5, b = 10

let mini: Int
if a < b { mini = a } else { mini = b }
print("Minimum (if-else): \(mini)")

let maxi: Int
if a > b { maxi = a } else { maxi = b }
print("Maximum (if-else): \(maxi)")

// 📝 Challenge: Change `a = 20`. What do mini and maxi print?
//Minimum (if-else): 10
//Maximum (if-else): 20

//: ## Ternary Operator
let miniNew = a < b ? a : b
let maxiNew = a > b ? a : b
print("Minimum (ternary): \(miniNew)")
print("Maximum (ternary): \(maxiNew)")

// 📝 Quick Check: Which style is shorter — if-else or ternary?


//: ## Switch Basics
let number = 10
switch number {
case 0: print("zero")
case 1: print("one")
case 2: print("two")
default: print("other number")
}

// 📝 Task: Add a new case for `2`.


//: ## Switch with Multiple Matches
let stringAnimal = "Dog"
switch stringAnimal {
case "Cat", "Dog": print("House pet")
default: print("Not a house pet")
}


//: ## Switch with Ranges
let hourOfDayNew = 19
let timeOfDayNew: String

switch hourOfDayNew {
case 0...5: timeOfDayNew = "Early morning"
case 6...11: timeOfDayNew = "Morning"
case 12...16: timeOfDayNew = "Afternoon"
case 17...19: timeOfDayNew = "Evening"
case 20...23: timeOfDayNew = "Late evening"
default: timeOfDayNew = "INVALID!"
}
print("Time (switch): \(timeOfDayNew)")

// 📝 Task: Try setting `hourOfDayNew = 25`. Which case runs?
//Time (switch): INVALID!

//: ## Range Matching Example
let testScore = 85
var grade: String

switch testScore {
case 90...100: grade = "A"
case 80..<90: grade = "B"
case 70..<80: grade = "C"
case 60..<70: grade = "D"
case 0..<60: grade = "F"
default: grade = "Invalid score"
}
print("Score: \(testScore), Grade: \(grade)")

// 📝 Challenge: Change score to 45. What grade prints?
//Score: 45, Grade: F

//: ## Practice short questions
// 1. Positive, negative, or zero
let testNumber = -5
if testNumber > 0 {
    print("\(testNumber) is positive")
} else if testNumber < 0 {
    print("\(testNumber) is negative")
} else {
    print("Zero")
}

// 2. Leap year check
let year = 2024
if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
    print("\(year) is leap year")
} else {
    print("\(year) is not leap year")
}

// 3. Switch traffic light
let trafficLight = "Green"
switch trafficLight {
case "Red": print("Stop")
case "Yellow": print("Prepare to stop")
case "Green": print("Go")
default: print("Invalid color")
}

// 4. Ternary short form
let isRaining = true
let activity = isRaining ? "Stay indoors" : "Go outside"
print("Decision: \(activity)")

/*:
 ---
 # Playground: Loops in Swift
 ## Overview
 Explore **for-in**, **while**, **repeat-while**, and control flow (`break`, `continue`).
 */

//: ## For-In Loops
print("Multiplication table (5s):")
for i in 1...7 {
    print("\(i) × 5 = \(i * 5)")
}
// 📝 Task: Change to print the 7-times table.


//: ## Half-Open Ranges
let maximum = 10
var sum = 0
for i in 0...maximum {
//    print(i)
    sum += i
}
print("Sum 0..<\(maximum) = \(sum)")
// 📝 Predict: What changes if you use `0...maximum`?


//: ## While Loop
sum = 1
while sum < 100 {
    sum *= 2
    print(sum)
}
// 📝 Challenge: Start sum at 3. How does growth differ?


//: ## Continue & Break
sum = 0
for row in 0..<8 {
    if row % 2 == 0 { continue }  // skip even rows
    for col in 0..<8 {
        sum += row * col
    }
}
print("Sum over odd rows: \(sum)")

for num in 1...20 {
    if num > 5 { break }
    print(num, terminator: " ")
}
print()
// 📝 Task: Try breaking at 5 instead of 10.


//: ## Repeat-While
var counter = 3
repeat {
    print("Counter: \(counter)")
    counter -= 1
} while counter > 0
// 📝 Predict: What if counter starts at 0?
//print only 0

//: ## Looping Arrays
let fruits = ["Apple", "Banana", "Orange"]
for (index, fruit) in fruits.enumerated() {
    print("Fruit \(index + 1): \(fruit)")
}
// 📝 Challenge: Add "Grapes" and rerun.


//: ## Stride
for number in stride(from: 10, through: 0, by: -2) {
    print(number, terminator: " ")
}
print()
// 📝 Task: Try counting up from 0 to 20 by 4.

/*:
 ---
 ## Key Takeaways
 - **If** = simple conditions
 - **If-else** = binary choice
 - **Else-if** = multiple conditions
 - **Switch** = clean multi-case logic
 - **Ternary** = short if-else
 - **For-in** = fixed loops
 - **While** = condition-based loops
 - **Repeat-while** = runs at least once
 - Use `continue` to skip, `break` to exit
 */
