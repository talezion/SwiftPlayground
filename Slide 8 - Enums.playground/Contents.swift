/*
README: SLIDE 8 - ENUMERATIONS
This slide covers enumerations, including raw values, associated values, and computed properties.
Additional Use Cases:
• Enum with raw values.
• Enum with associated values and pattern matching using switch.
• Enum with computed properties.
*/

/// Enum with raw values
enum TransactionType: String {
    case deposit = "Deposit"
    case withdrawal = "Withdrawal"
}
print("Transaction type: \(TransactionType.deposit.rawValue)")

/// Enum with associated values
enum PaymentMethod {
    case cash(amount: Double)
    case card(number: String)
}
let payment = PaymentMethod.card(number: "1234-5678-9012-3456")
switch payment {
case .cash(let amount):
    print("Paid in cash: \(amount)")
case .card(let number):
    print("Paid with card: \(number)")
}

/// Enum with computed properties
enum CompassDirection {
    case north, south, east, west
    var description: String {
        switch self {
        case .north: return "North"
        case .south: return "South"
        case .east: return "East"
        case .west: return "West"
        }
    }
}
let direction = CompassDirection.east
print("Compass direction: \(direction.description)")
