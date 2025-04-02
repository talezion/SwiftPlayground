/*
README: SLIDE 14 - INITIALIZATION
This slide covers initialization, including failable and convenience initializers.
Additional Use Cases:
• Failable initializer that returns nil if conditions aren’t met.
• Convenience initializer that provides default values.
*/

/// Failable initializer in a struct
struct Transaction {
    var id: String
    init?(id: String) {
        if id.isEmpty { return nil }
        self.id = id
    }
}
if let tx = Transaction(id: "abc123") {
    print("Transaction initialized with ID: \(tx.id)")
} else {
    print("Failed to initialize transaction")
}

/// Convenience initializer example in a class
class Person {
    var name: String
    var age: Int
    
    // Designated initializer
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // Convenience initializer with default age
    convenience init(name: String) {
        self.init(name: name, age: 30)
    }
}
let person1 = Person(name: "Alice", age: 25)
let person2 = Person(name: "Bob")
print("Person1: \(person1.name), Age: \(person1.age)")
print("Person2: \(person2.name), Age: \(person2.age)")
