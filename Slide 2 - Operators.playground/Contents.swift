/*
README: SLIDE 2 - BASIC OPERATORS
This slide demonstrates basic arithmetic operators and operator overloading.
Additional Use Cases:
• Using addition, subtraction, multiplication, division, and modulo.
• Overloading operators for custom types (e.g., combining travel distances).
*/

/// Standard arithmetic operations
let a = 10, b = 3
print("Addition: \(a + b)")
print("Subtraction: \(a - b)")
print("Multiplication: \(a * b)")
print("Division: \(a / b)")
print("Modulo: \(a % b)")

/// Custom operator overloading for a custom type (TravelDistance)
struct TravelDistance {
    var kilometers: Int
}

extension TravelDistance {
    static func + (lhs: TravelDistance, rhs: TravelDistance) -> TravelDistance {
        return TravelDistance(kilometers: lhs.kilometers + rhs.kilometers)
    }
}

let leg1 = TravelDistance(kilometers: 100)
let leg2 = TravelDistance(kilometers: 150)
let totalLegs = leg1 + leg2
print("Total travel distance: \(totalLegs.kilometers) km")
