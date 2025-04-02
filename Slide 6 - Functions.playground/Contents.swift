/*
README: SLIDE 6 - FUNCTIONS
This slide explains how to write and use functions.
Additional Use Cases:
• Functions with external parameter names and default parameters.
• Variadic functions accepting multiple arguments.
• Functions returning tuples.
*/

/// Simple function
func showMovie(title: String) -> String {
    return "Now showing: \(title)"
}
print(showMovie(title: "The Matrix"))

/// Function with external parameter names and default parameters
func bookTicket(forMovie title: String, seat: String = "Standard") -> String {
    return "Ticket booked for \(title) with \(seat) seat."
}
print(bookTicket(forMovie: "Inception"))
print(bookTicket(forMovie: "Inception", seat: "VIP"))

/// Variadic parameters example
func printMovies(_ movies: String...) {
    for movie in movies {
        print("Movie: \(movie)")
    }
}
printMovies("Inception", "Interstellar", "The Dark Knight")

/// Function returning a tuple
func calculateTicketPrice(basePrice: Double, tax: Double) -> (total: Double, taxAmount: Double) {
    let taxAmount = basePrice * tax
    let totalPrice = basePrice + taxAmount
    return (totalPrice, taxAmount)
}
let pricing = calculateTicketPrice(basePrice: 10.0, tax: 0.07)
print("Total: \(pricing.total), Tax: \(pricing.taxAmount)")
