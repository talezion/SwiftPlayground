/*
README: SLIDE 11 - METHODS
This slide demonstrates methods in Swift.
Additional Use Cases:
• Instance methods that operate on an instance’s data.
• Static methods for functionality related to the type rather than an instance.
*/

/// Instance method example
struct Movie {
    var title: String
    func description() -> String {
        return "Movie: \(title)"
    }
}
let movieInstance = Movie(title: "Interstellar")
print(movieInstance.description())

/// Static method example
struct MathHelper {
    static func square(_ number: Int) -> Int {
        return number * number
    }
}
print("Square of 4 is \(MathHelper.square(4))")
