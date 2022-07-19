/*
 Challenge 3 - Do two strings contain the same characters?
 Write a function that accepts two String parameters, and returns true
 if they contain the same characters in any order taking into
 account letter case.
*/

func challenge3a(input1: String, input2: String) -> Bool {
    var checked = input2
    
    for letter in input1 {
        if let index = checked.firstIndex(of: letter) {
            checked.remove(at: index)
        } else {
            return false
        }
    }
    return checked.count == 0
}



// ****Ideal solution****
func challenge3b(input1: String, input2: String) -> Bool {
    return input1.sorted() == input2.sorted()
}

// Tests:
print(challenge3a(input1: "abca", input2: "abca") == true, "contain the same characters")
print(challenge3a(input1: "abc", input2: "cba") == true, "contain the same characters")
print(challenge3a(input1: "a1 b2", input2: "b1 a2") == true, "contain the same characters")
print(challenge3a(input1: "abc", input2: "abca") == false, "Does NOT contain the same characters")
print(challenge3a(input1: "abc", input2: "Abc") == false, "Does NOT contain the same characters")
print(challenge3a(input1: "abca", input2: "cbAa") == false, "Does NOT contain the same characters")
print(challenge3a(input1: "abcc", input2: "abca") == false, "Does NOT contain the same characters")

print(challenge3b(input1: "abca", input2: "abca") == true, "contain the same characters")
print(challenge3b(input1: "abc", input2: "cba") == true, "contain the same characters")
print(challenge3b(input1: "a1 b2", input2: "b1 a2") == true, "contain the same characters")
print(challenge3b(input1: "abc", input2: "abca") == false, "Does NOT contain the same characters")
print(challenge3b(input1: "abc", input2: "Abc") == false, "Does NOT contain the same characters")
print(challenge3b(input1: "abca", input2: "cbAa") == false, "Does NOT contain the same characters")
print(challenge3b(input1: "abcc", input2: "abca") == false, "Does NOT contain the same characters")
