/*
README: SLIDE 10 - PROPERTIES
This slide demonstrates properties, including stored, computed properties and property observers.
Additional Use Cases:
• Using a property observer to react to changes.
• Defining a computed property that calculates derived data.
*/

/// Stored property with observer
struct CryptoWallet {
    var balance: Double {
        didSet {
            print("Wallet balance updated from \(oldValue) to \(balance)")
        }
    }
}
var walletBalance = CryptoWallet(balance: 1.0)
walletBalance.balance = 1.5

/// Computed property example
struct Rectangle {
    var width: Double
    var height: Double
    var area: Double {
        return width * height
    }
}
let rect = Rectangle(width: 10.0, height: 5.0)
print("Area of rectangle: \(rect.area)")
