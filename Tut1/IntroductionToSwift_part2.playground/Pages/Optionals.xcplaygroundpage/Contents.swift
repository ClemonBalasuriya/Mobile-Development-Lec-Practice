/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)
 
 ---
 
 ## Playground: Optionals in Swift
 ## Overview
 This playground explores **optionals** — Swift’s safe way of handling values that may or may not exist.
 */

//: ---
//: ## What are Optionals?
//: An optional can hold either:
//: - **Some value** (e.g., "Hello")  
//: - **No value** (`nil`)

//: ### Why Optionals?
//: 1. **Type Safety** – Avoids null pointer crashes common in other languages  
//: 2. **Explicit Intent** – Makes it clear a value might be missing  
//: 3. **Compiler Enforcement** – Forces you to handle both cases  
//: 4. **API Clarity** – Functions show when they might not return a value

//: ---
//: ## Declaring Optionals

var optionalString: String? = "Hello"
var optionalInt: Int? = nil
var optionalDouble: Double?   // Defaults to nil

print("optionalString: \(String(describing: optionalString))")
print("optionalInt: \(String(describing: optionalInt))")

//: ---
//: ## Unwrapping Optionals Safely

//: ### 1. Optional Binding (`if let`)
if let unwrappedString = optionalString {
    print("1. if let – Unwrapped: \(unwrappedString)")
} else {
    print("1. if let – String is nil")
}

// Multiple bindings in one if statement
var optionalAge: Int? = 25
var optionalName: String? = "Alice"

if let name = optionalName, let age = optionalAge {
    print("1. Multiple if let – \(name) is \(age) years old")
}

//: ### 2. Guard Statements
func processUser(name: String?, age: Int?) {
    guard let userName = name else {
        print("2. guard – Name is required")
        return
    }
    guard let userAge = age else {
        print("2. guard – Age is required")
        return
    }
    print("2. guard – Processing \(userName), age \(userAge)")
}

processUser(name: "Bob", age: 30)
processUser(name: nil, age: 30)

//: ### 3. Force Unwrapping (⚠️ Dangerous)
var definitelyExists: String? = "I'm here!"
print("3. Force unwrap (safe): \(definitelyExists!)")

// Avoid unless absolutely sure value exists!
// let crash = optionalInt!   // 💥 would crash because it's nil

//: ---
//: ## Optional Chaining

struct Address {
    var street: String?
    var city: String?
    func formattedAddress() -> String? {
        guard let street = street, let city = city else { return nil }
        return "\(street), \(city)"
    }
}

struct Person {
    var name: String
    var address: Address?
}

let john = Person(name: "John", address: Address(street: "123 Main St", city: "New York"))
let jane = Person(name: "Jane", address: nil)

// Accessing optional properties
let johnsCity = john.address?.city
let janesCity = jane.address?.city

print("4. John's city: \(String(describing: johnsCity))")
print("4. Jane's city: \(String(describing: janesCity))")

// Deep chaining
struct Company { var CEO: Person? }
struct Corporation { var parentCompany: Company? }

let megaCorp = Corporation(parentCompany: Company(CEO: Person(name: "CEO",
                                                              address: Address(street: "Corporate Ave", city: "Metropolis"))))

let ceosCity = megaCorp.parentCompany?.CEO?.address?.city
print("4. Deep optional chaining: \(String(describing: ceosCity))")

//: ---
//: ## Nil Coalescing Operator (??)

let defaultCity = "Unknown City"
let actualCity = john.address?.city ?? defaultCity
let janesActualCity = jane.address?.city ?? "No address available"

print("5. John's city: \(actualCity)")
print("5. Jane's city: \(janesActualCity)")

//: ---
//: ## Practice Exercises

print("\n--- Practice Exercises ---")

// 1. Safe unwrapping with if let
var optionalValue: Int? = 42
if let value = optionalValue {
    print("1. Value exists: \(value)")
} else {
    print("1. Value is nil")
}

// 2. Guard practice
func printLength(of string: String?) {
    guard let string = string else {
        print("2. String is nil")
        return
    }
    print("2. Length: \(string.count)")
}
printLength(of: "Hello")
printLength(of: nil)

// 3. Optional chaining with method
if let formatted = john.address?.formattedAddress() {
    print("3. Address: \(formatted)")
} else {
    print("3. No address available")
}

// 4. Nil coalescing
var optionalCount: Int? = nil
let actualCount = optionalCount ?? 0
print("4. Count: \(actualCount)")

// 5. Handling multiple optionals
var first: String? = "First"
var second: String? = nil
var third: String? = "Third"

if let a = first, let b = second, let c = third {
    print("5. All values: \(a), \(b), \(c)")
} else {
    print("5. Some values are missing")
}

//: ---
//: ## Key Takeaways
/*:
 - **Why Optionals?**
 - Prevent crashes from missing values  
 - Make “might be missing” explicit in type system  
 - Force safe handling by compiler  
 
 - **Unwrapping Techniques**
 1. `if let` – unwrap for use in a block  
 2. `guard let` – unwrap early, keep variable in scope  
 3. Force unwrap `!` – use sparingly  
 4. Nil coalescing `??` – provide default values  
 
 - **Optional Chaining**
 - Safe way to access nested optionals  
 - Too much chaining = messy → consider refactoring  
 
 - **Best Practices**
 - Avoid force unwraps  
 - Prefer `guard` for required values  
 - Provide defaults with `??`  
 - Keep chaining shallow
 */

/*:
 ## Navigation
 [< Previous Page](@previous) | [Home](Introduction) | [Next Page >](@next)
 */


