/*
README: SLIDE 7 - CLOSURES
This slide demonstrates closures and their various applications.
Additional Use Cases:
• Using closures with sorted, filter, and map.
• A closure as a callback in an asynchronous task.
*/

import Foundation

/// Using closure with sorted
let destinations = ["Paris", "Tokyo", "New York", "Berlin"]
let sortedDestinations = destinations.sorted { $0 < $1 }
print("Sorted Destinations: \(sortedDestinations)")

/// Filtering using closures
let longNames = destinations.filter { $0.count > 5 }
print("Long destination names: \(longNames)")

/// Mapping using closures
let destinationLengths = destinations.map { $0.count }
print("Destination name lengths: \(destinationLengths)")

/// Closure as a callback
func performAsyncTask(completion: @escaping @Sendable (String) -> Void) {
    DispatchQueue.global().async {
        // Simulate asynchronous work
        sleep(1)
        completion("Task Completed")
    }
}

performAsyncTask { result in
    print(result)
}
