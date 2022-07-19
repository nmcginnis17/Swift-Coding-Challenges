/*
 Challenge 7 - Condense whitespace
 Write a function that returns a string with any consecutive spaces
 replaced with a single space.
*/

import Foundation


// Removes all whitespace
func challenge7a(input: NSString) -> String {
    var condensed = input.replacingOccurrences(of: " ", with: "")
    return condensed
}

// Loop over the characters in the input string
func challenge7b(input: String) -> String {
    var whiteSpace = false
    var condensed = ""
    
    for index in input {
        if index == " " {
            if whiteSpace { continue }
            whiteSpace = true
        } else {
            whiteSpace = false
        }
        condensed.append(index)
    }
    return condensed
}

// RegEx
// " +" means match one or more spaces, casuing multiple spaces to be replaced with a single space.
func challenge7c(input: String) -> String{
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}


// Tests:
print(challenge7a(input: "a   b   c"))
print(challenge7a(input: "    a"))
print(challenge7a(input: "abc"))

print(challenge7b(input: "a   b   c"))
print(challenge7b(input: "    a"))
print(challenge7b(input: "abc"))

print(challenge7c(input: "a   b   c"))
print(challenge7c(input: "    a"))
print(challenge7c(input: "abc"))
