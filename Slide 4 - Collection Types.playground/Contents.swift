/*
README: SLIDE 4 - COLLECTION TYPES
This slide introduces Swift’s core collection types: Arrays, Dictionaries, and Sets.
Additional Use Cases:
• Array operations: appending, iterating, filtering, and sorting.
• Dictionary: adding key-value pairs and iterating over entries.
• Set: performing union and intersection.
*/

/// Arrays
var movieList = ["Inception", "Interstellar", "The Dark Knight"]
print("Original movies: \(movieList)")
movieList.append("Dunkirk")
print("Updated movies: \(movieList)")
let sortedMovies = movieList.sorted()
print("Sorted movies: \(sortedMovies)")

/// Dictionaries
var movieRatings: [String: Double] = ["Inception": 8.8, "Interstellar": 8.6]
movieRatings["The Dark Knight"] = 9.0
print("Movie Ratings: \(movieRatings)")
for (movie, rating) in movieRatings {
    print("\(movie) has a rating of \(rating)")
}

/// Sets
let setA: Set = ["addr1", "addr2", "addr3"]
let setB: Set = ["addr2", "addr4"]
let unionSet = setA.union(setB)
let intersectionSet = setA.intersection(setB)
print("Union of addresses: \(unionSet)")
print("Intersection of addresses: \(intersectionSet)")
