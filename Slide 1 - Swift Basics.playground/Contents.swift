/*
README: SLIDE 1 - THE BASICS OF SWIFT
This slide introduces the basics of Swift, including constants vs. variables and string interpolation.
Additional Use Cases:
• Using `let` for constants and `var` for variables.
• Demonstrating string interpolation to combine text and variables.
*/

import UIKit
import Foundation

// Declaring a constant and a variable
let movieTitle = "Inception"
var currentMovie = movieTitle
print("Now playing: \(currentMovie)")

// Changing the variable value
currentMovie = "Interstellar"
print("Now playing: \(currentMovie)")

// Combining multiple variables using string interpolation
let director = "Christopher Nolan"
print("\(movieTitle) directed by \(director)")
