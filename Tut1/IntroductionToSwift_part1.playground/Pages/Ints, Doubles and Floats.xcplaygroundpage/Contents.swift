/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)

 ---

 # Playground: Week 1 – Introduction to Swift (Part 1)
 ## Overview
 This page explores Swift’s numeric data types: **Int, Float, and Double**
 ---
 */

import Foundation

//: ## Integers (Whole Numbers)
let age: Int = 25
let numberOfItems = 10          // Type inferred as Int
let temperature = -5            // Negative values allowed
let population = 8_000_000_000  // Underscores improve readability

print("Integer examples:")
print("Age: \(age)")
print("Items: \(numberOfItems)")
print("Temperature: \(temperature)")
print("Population: \(population)")

// 📝 Task: Create your own Int variable (e.g., `numberOfApples`) and print it.
//let numberOfApples : Int = 10

//: ## Floats (32-bit Decimals) – ~7 digits precision
let piFloat: Float = 3.1415926535
let temperatureFloat: Float = 23.7

print("\nFloat examples:")
print("Pi (Float): \(piFloat)")
print("Temperature (Float): \(temperatureFloat)")

// 📝 Predict: What happens if you try printing `piFloat` with 10 decimal places?


//: ## Doubles (64-bit Decimals) – ~15 digits precision
let piDouble: Double = 3.141592653589793
let exactMeasurement: Double = 1.618033988749894

print("\nDouble examples:")
print("Pi (Double): \(piDouble)")
print("Exact measurement: \(exactMeasurement)")

// 📝 Quick Check: Which type does Swift choose by default if you write `let x = 3.14`?
let xnum = 3.14
print(type(of: xnum))

//: ## Type Safety
var wholeNumber: Int = 5
var floatNumber: Float = 3.14
var doubleNumber: Double = 2.718

print("\nType safety demonstration:")
print("Int: \(wholeNumber), Float: \(floatNumber), Double: \(doubleNumber)")

// ❌ These would cause errors (uncomment to test):
// let result1 = wholeNumber + floatNumber
// let result2 = floatNumber + doubleNumber

// 📝 Task: Try adding Int + Double by converting one type to the other.


//: ## Explicit Conversion
let safeResult1 = Float(wholeNumber) + floatNumber
let safeResult2 = Double(wholeNumber) + doubleNumber
let safeResult3 = Double(floatNumber) + doubleNumber

print("\nConversion results:")
print("Int + Float = \(safeResult1)")
print("Int + Double = \(safeResult2)")
print("Float + Double = \(safeResult3)")

// 📝 Challenge: Convert a Double into an Int. What happens to the decimal part?


//: ## Real-world Examples
let students = 30
let booksPerStudent = 3
let totalBooks = students * booksPerStudent
print("\nTotal books needed: \(totalBooks)")

let vertexPosition: Float = 1.23456   // graphics (Float)
let circleRadius = 5.0                // scientific (Double)
let circleArea = piDouble * pow(circleRadius, 2)
print("Circle area: \(circleArea)")

// 📝 Task: Calculate the perimeter of a circle using `Double`.
//let circleperimeter = 2 * piDouble * circleRadius
//print("Calculate the perimeter of a circle using Double:  \(circleperimeter)")
//: ## Practice Mini-Exercises
// 1. Convert Int → Double → Float
let myInt = 42
let myDouble = Double(myInt)
let myFloat = Float(myInt)

// 2. Rectangle area (Int dimensions)
let width = 10
let height = 5
let area = width * height
print("Rectangle area: \(area)")

// 3. Mixed Int + Double calculation
let intValue = 7
let doubleValue = 3.14
let mixedResult = Double(intValue) + doubleValue
print("Mixed result: \(mixedResult)")

// 4. Different numeric literals
let binaryNumber = 0b1010   // 10 in binary
let octalNumber = 0o12      // 10 in octal
let hexNumber = 0xA         // 10 in hex
print("Binary: \(binaryNumber), Octal: \(octalNumber), Hex: \(hexNumber)")


//: ## Applied Questions
// Q1: £100 increases by 5% each month. What after 12 months?
let initialAmount = 100.0
let monthlyRate = 5.0
let months = 12
let finalAmount = initialAmount * pow(1 + (monthlyRate/100), Double(months))
print("\nQ1: £100 grows to £\(String(format: "%.2f", finalAmount)) in 1 year.")

// Q2: What monthly rate gives 12% annual growth?
let annualRate = 12.0
let monthlyEquivalent = pow(1 + annualRate/100, 1.0/12.0) - 1
print("Q2: 12% annual = \(String(format: "%.4f", monthlyEquivalent*100))% monthly.")


//: ## Key Takeaways
// - Swift is type-safe (no silent conversions).
// - Use **Int** for whole numbers.
// - Use **Double** (default) for most decimals.
// - Use **Float** only for memory efficiency.
// - Always convert explicitly when mixing types.
