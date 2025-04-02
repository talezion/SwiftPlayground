/*
README: SLIDE 12 - SUBSCRIPTS
This slide explains how to use subscripts in Swift.
Additional Use Cases:
• Read-only subscript to access elements.
• Read-write subscript to modify elements.
*/

/// Read-only subscript example
struct Itinerary {
    var destinations: [String]
    subscript(index: Int) -> String {
        return destinations[index]
    }
}
let tripPlan = Itinerary(destinations: ["London", "Berlin", "Rome"])
print("Destination at index 1: \(tripPlan[1])")

/// Read-write subscript example
struct Scores {
    private var scoreArray: [Int] = [10, 20, 30]
    subscript(index: Int) -> Int {
        get { return scoreArray[index] }
        set(newValue) { scoreArray[index] = newValue }
    }
    func printScores() {
        print(scoreArray)
    }
}
var gameScores = Scores()
print("Original score: \(gameScores[0])")
gameScores[0] = 50
gameScores.printScores()
