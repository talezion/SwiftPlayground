/*
README: SLIDE 25 - GENERICS
This slide explains generics in Swift.
Additional Use Cases:
• A generic function to swap values.
• A generic type (Box) that can hold values of any type.
*/

/// Generic function to swap two values
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}
var coin1 = "Bitcoin"
var coin2 = "Ethereum"
swapValues(&coin1, &coin2)
print("Swapped coins: \(coin1), \(coin2)")

/// Generic type: A simple container
struct Box<T> {
    var value: T
}
let intBox = Box(value: 42)
let stringBox = Box(value: "Hello")
print("Boxed integer: \(intBox.value), Boxed string: \(stringBox.value)")

