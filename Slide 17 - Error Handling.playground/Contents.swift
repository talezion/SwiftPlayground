/*
README: SLIDE 17 - ERROR HANDLING
This slide demonstrates error handling using do-try-catch with multiple error cases.
Additional Use Cases:
• Throwing custom errors with associated messages.
• Using multiple catch clauses for specific error handling.
*/

/// Custom error type with associated value
enum TravelError: Error {
    case invalidDestination(String)
    case bookingUnavailable
}

func bookTrip(destination: String) throws -> String {
    if destination.isEmpty {
        throw TravelError.invalidDestination("Destination cannot be empty")
    }
    if destination == "Atlantis" {
        throw TravelError.bookingUnavailable
    }
    return "Trip booked to \(destination)"
}

do {
    let confirmation = try bookTrip(destination: "Paris")
    print(confirmation)
} catch TravelError.invalidDestination(let message) {
    print("Invalid Destination Error: \(message)")
} catch TravelError.bookingUnavailable {
    print("Booking is currently unavailable.")
} catch {
    print("An unexpected error occurred: \(error)")
}
