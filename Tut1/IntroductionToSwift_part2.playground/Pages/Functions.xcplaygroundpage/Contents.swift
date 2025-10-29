/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)

 ---

 ## Playground: Functions in Swift – Interactive Guide
 ## Overview
 Functions are reusable blocks of code.
 They can take parameters, return values, or do both.

 👉 Today you’ll learn **how to define, call, and experiment** with functions.
 */

//: ---
//: ## 1. Basic Functions

func greet(person: String) -> String {
    return "Hello, \(person)!"
}

print(greet(person: "Alice"))

//: 💡 Try it yourself:
//: 1. Call `greet` with your own name
//: 2. Change the return message to say "Welcome" instead of "Hello"

//: ---
//: ## 2. Implicit Return

func double(_ number: Int) -> Int {
    number * 2   // no return keyword needed
}

print(double(5))

//: ✅ Challenge: Write a function `square` that uses implicit return
//: (Hint: number * number)

//: ---
//: ## 3. Multiple Parameters

func createUser(name: String, email: String) -> String {
    return "User: \(name), Email: \(email)"
}

print(createUser(name: "Jane", email: "jane@example.com"))

//: ✏️ Try it: Add an `age` parameter and print it in the return string

//: ---
//: ## 4. Returning Multiple Values (Tuples)

func getStatistics(scores: [Int]) -> (min: Int, max: Int, average: Double) {
    let min = scores.min() ?? 0
    let max = scores.max() ?? 0
    let average = Double(scores.reduce(0, +)) / Double(scores.count == 0 ? 1 : scores.count)
    return (min, max, average)
}

print(getStatistics(scores: [10, 20, 30, 40]))

//: 🚀 Challenge: Call `getStatistics` with your own array of numbers

//: ---
//: ## 5. Parameter Labels

func calculateBMI(weight kilograms: Double, height meters: Double) -> Double {
    kilograms / (meters * meters)
}

print(calculateBMI(weight: 70, height: 1.75))

//: 🔄 Task: Call this function but swap the arguments – what happens? Why?
//: Hint: Parameter labels enforce clarity at the call site.

//: ---
//: ## 6. Default Parameters

func sendMessage(to recipient: String, message: String = "Hello") -> String {
    "To: \(recipient), Message: \(message)"
}

print(sendMessage(to: "Alice"))

//: ✨ Try it: Call `sendMessage` with a custom message
//: What happens if you only pass the recipient?

//: ---
//: ## 7. Variadic Functions

func calculateAverage(_ numbers: Double...) -> Double {
    guard !numbers.isEmpty else { return 0 }
    return numbers.reduce(0, +) / Double(numbers.count)
}

print(calculateAverage(1, 2, 3, 4, 5))

//: 📝 Task: Call `calculateAverage()` with no arguments – what happens?

//: ---
//: ## 8. Throwing Functions

enum MathError: Error { case divisionByZero }

func safeDivide(_ a: Int, by b: Int) throws -> Int {
    guard b != 0 else { throw MathError.divisionByZero }
    return a / b
}

do {
    print(try safeDivide(10, by: 2))
} catch {
    print("Error: \(error)")
}

//: 💡 Task: Try calling `safeDivide(10, by: 0)` – what happens?

//: ---
//: ## 9. Inout Parameters

func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var x = 5, y = 10
swapValues(&x, &y)
print(x, y)

//: ❓ Question: Why do we need the `&` symbol here?

//: ---
//: ## 10. Functions as Variables

func increment(_ number: Int) -> Int { number + 1 }

let mathOp: (Int) -> Int = increment
print(mathOp(5))

/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)
 */
