/*
README: SLIDE 18 - SWIFT CONCURRENCY BASICS
This slide demonstrates Swift's concurrency model using async/await.
Additional Use Cases:
• Simulating an asynchronous network call.
• Running multiple asynchronous tasks concurrently.
*/

/// Simulate asynchronous function to fetch a stock price
func fetchStockPrice() async -> Double {
    // Simulate network delay (0.5 seconds)
    try? await Task.sleep(nanoseconds: 500_000_000)
    return 150.0
}

/// Using Task to run asynchronous code
Task {
    let price = await fetchStockPrice()
    print("Stock Price: \(price)")
}

/// Running multiple asynchronous tasks concurrently
func fetchMultiplePrices() async -> [Double] {
    async let price1 = fetchStockPrice()
    async let price2 = fetchStockPrice()
    return await [price1, price2]
}
Task {
    let prices = await fetchMultiplePrices()
    print("Multiple stock prices: \(prices)")
}
