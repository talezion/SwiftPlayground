/*
README: SLIDE 5 - CONTROL FLOW
This slide demonstrates various control flow constructs.
Additional Use Cases:
• if-else and if-else if-else statements.
• for-in loop to iterate over collections.
• switch statement to handle multiple cases.
*/

/// if-else and if-else if-else
let cryptoPrice = 50000
if cryptoPrice > 60000 {
    print("Extreme Bull Market!")
} else if cryptoPrice > 40000 {
    print("Bull Market!")
} else {
    print("Bear Market!")
}

/// For-in loop
let cryptocurrencies = ["Bitcoin", "Ethereum", "Litecoin"]
for crypto in cryptocurrencies {
    print("Analyzing market data for \(crypto)")
}

/// Switch statement example
let travelMode = "train"
switch travelMode {
case "car":
    print("Driving mode selected.")
case "train":
    print("Train journey selected.")
case "airplane":
    print("Flying high!")
default:
    print("Unknown travel mode")
}
