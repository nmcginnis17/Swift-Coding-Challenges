/*
 Challenge 6 - Remove duplicate letters from a string
 Write a function that acccepts a string input, and returns the same string
 just with duplicate letters removed.
*/

import Foundation

// Brute force approach
func challenge6a(input: String) -> String {
    var dupLetter = [Character]()
    
    for letter in input {
        if !dupLetter.contains(letter) {
            dupLetter.append(letter)
        }
    }
    return String(dupLetter)
}


// Update dictionary using updateValue() and filter() method
func challenge6b(input: String) -> String {
    var usedLetters = [Character: Bool]()
    
    let result = input.filter {
        usedLetters.updateValue(true, forKey: $0) == nil
    }
    
    return String(result)
}


// Tests:
 print(challenge6a(input: "wombat"))
 print(challenge6a(input: "hello"))
 print(challenge6a(input: "Mississippi"))

 print(challenge6b(input: "wombat"))
 print(challenge6b(input: "hello"))
 print(challenge6b(input: "Mississippi"))
