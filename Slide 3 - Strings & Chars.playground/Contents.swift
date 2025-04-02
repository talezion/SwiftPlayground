/*
README: SLIDE 3 - STRINGS AND CHARACTERS
This slide covers strings and characters, including transformations and concatenation.
Additional Use Cases:
• Changing case (uppercase/lowercase)
• Counting characters in a string.
• Concatenating strings using both interpolation and the '+' operator.
*/

let currency = "USD"
let amount = 1000
let transactionMessage = "Deposit: \(amount) \(currency)"
print(transactionMessage)

// Transforming string case
let greeting = "Hello, Swift!"
print("Uppercase: \(greeting.uppercased())")
print("Lowercase: \(greeting.lowercased())")

// Counting characters
print("The greeting has \(greeting.count) characters.")

// String concatenation using '+'
let additionalInfo = "Enjoy your transaction."
let fullMessage = transactionMessage + " - " + additionalInfo
print(fullMessage)
