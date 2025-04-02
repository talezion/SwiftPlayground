/*
README: SLIDE 21 - TYPE CASTING
This slide demonstrates type casting, including downcasting and type checking.
Additional Use Cases:
• Downcasting using `as?` to safely convert types.
• Using the `is` operator to check an instance’s type.
*/

class Media { }
class TypeCastingMovie: Media {
    var title: String = "A Great Movie"
}
let mediaItem: Media = TypeCastingMovie()

if let movieCast = mediaItem as? TypeCastingMovie {
    print("Casting successful: \(movieCast.title)")
}

if mediaItem is TypeCastingMovie {
    print("mediaItem is a TypeCastingMovie")
}
