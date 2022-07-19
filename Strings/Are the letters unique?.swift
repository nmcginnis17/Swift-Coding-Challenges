//
//  Are the letters unique?.swift
//  Swift Coding Challenges
//
//  Created by Nicholas McGinnis on 7/18/22.
//
/*
 Write a function that accepts a String as its only parameter,
 and returns true if the string has only unique letters, taking letter case into account.
 */

import Foundation

func challenge1a(input: String) -> Bool {
    var checked = [Character]()
    
    for letter in input {
        if checked.contains(letter) {
            return false
        }
        checked.append(letter)
    }
    return true
}




// Tests:
 print(challenge1a(input: "No duplicates") == true, "Contains no duplicates")
 print(challenge1a(input: "abcdefghijklmnopqrstuvwxyz") == true, "Contains no duplicates")
 print(challenge1a(input: "AaBbCc") == true, "Contains no duplicates")
 print(challenge1a(input: "Hello, world") == false, "Does contain duplicates")
