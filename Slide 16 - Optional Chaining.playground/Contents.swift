/*
README: SLIDE 16 - OPTIONAL CHAINING
This slide demonstrates optional chaining to safely access nested optional values.
Additional Use Cases:
• Accessing nested properties using multiple levels of optional chaining.
*/

/// Classes with nested optional properties
class Director {
    var name: String
    init(name: String) { self.name = name }
}
class Film {
    var director: Director?
    var title: String
    init(title: String) {
        self.title = title
    }
}
let filmWithDirector = Film(title: "Inception")
filmWithDirector.director = Director(name: "Christopher Nolan")
if let directorName = filmWithDirector.director?.name {
    print("Film directed by \(directorName)")
} else {
    print("No director info available")
}

// Optional chaining with multiple levels
class Studio {
    var film: Film?
}
let studio = Studio()
studio.film = filmWithDirector
if let directorName = studio.film?.director?.name {
    print("Studio film director: \(directorName)")
} else {
    print("Director info missing in studio film")
}
