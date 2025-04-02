/*
README: SLIDE 27 - AUTOMATIC REFERENCE COUNTING (ARC)
This slide explains ARC and how it automatically manages memory.
Additional Use Cases:
• Demonstrating strong and weak references to avoid retain cycles.
*/

/// Strong reference example
class Tourist {
    var name: String
    init(name: String) {
        self.name = name
        print("\(name) joined the tour.")
    }
    deinit {
        print("\(name) has left the tour.")
    }
}
var tourist: Tourist? = Tourist(name: "Alice")
tourist = nil  // ARC cleans up the instance

/// Weak reference example
class TourGuide {
    var name: String
    weak var assistant: Tourist?
    init(name: String) {
        self.name = name
    }
}
var guide: TourGuide? = TourGuide(name: "Bob")
var assistant: Tourist? = Tourist(name: "Charlie")
guide?.assistant = assistant
assistant = nil  // 'Charlie' is deallocated; guide's assistant becomes nil
if guide?.assistant == nil {
    print("Guide's assistant is nil")
}
