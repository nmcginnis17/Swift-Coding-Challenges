/*
 Challenge 5 - Count the characters
 Write a function that accepts a string, and returns how many times a
 specific character appears, taking case into account.
*/


func challenge5(letter: Character, message: String) -> Int {
    var count = 0
    
    for index in message {
        if index == letter {
            count += 1
        }
    }
    return count
}

// Tests:
 print("The letter 'a' is in 'The rain in Spain' \(challenge5(letter: "a", message: "The rain in Spain")) times")
 print("The letter 'i' is in 'Mississippi' \(challenge5(letter: "i", message: "Mississippi")) times")
 print("The letter 'i' is in 'Hacking with Swift' \(challenge5(letter: "i", message: "Hacking with Swift")) times")
