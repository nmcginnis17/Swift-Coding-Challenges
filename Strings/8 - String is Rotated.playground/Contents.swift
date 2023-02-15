/*
 Challenge 8 - String is Rotated
 Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
 NOTE: A rotation is when you take a string, remove some letters from the end and append them to the front. ex "swift" rotated by two charatcers would be "ftswi"
*/


import Foundation

func challenge8(input: String, rotated: String) -> bool {
    guard input.count == rotated.count else { return false }
    let combined = input + input
    return combined.contains(rotated)
}
