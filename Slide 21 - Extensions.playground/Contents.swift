/*
README: SLIDE 23 - EXTENSIONS
This slide demonstrates how to extend existing types with new functionality.
Additional Use Cases:
• Extending built-in types (Double, String) with new methods and computed properties.
*/

/// Extending Double to format as currency
extension Double {
    func formattedCurrency() -> String {
        return String(format: "$%.2f", self)
    }
}
let priceValue = 99.99
print("Price: \(priceValue.formattedCurrency())")

/// Extending String to check for palindrome
extension String {
    var isPalindrome: Bool {
        return self == String(self.reversed())
    }
}
let word = "radar"
print("\(word) is palindrome? \(word.isPalindrome)")
