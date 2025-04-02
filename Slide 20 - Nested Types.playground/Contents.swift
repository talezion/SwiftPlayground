/*
README: SLIDE 22 - NESTED TYPES
This slide demonstrates how to define nested types to organize related functionality.
Additional Use Cases:
• Nested enums, structs, and classes to group related concepts.
*/

struct Journey {
    enum Mode {
        case car, train, airplane
    }
    struct Schedule {
        var departure: String
        var arrival: String
    }
    var mode: Mode
    var schedule: Schedule
}
let journey = Journey(mode: .airplane, schedule: Journey.Schedule(departure: "10:00 AM", arrival: "1:00 PM"))
print("Travel mode: \(journey.mode), Departure: \(journey.schedule.departure)")
