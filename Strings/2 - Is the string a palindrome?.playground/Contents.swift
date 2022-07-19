/*
 Challenge 2 - Is a string a palindrome?
 Write a function that accepts a String as its only parameter,
 and returns true if the string reads the same when reversed, ignore case
*/

func challenge2(input: String) -> Bool {
    let lc = input.lowercased()
    return String(lc.reversed()) == lc
}


// Tests:
 print(challenge2(input: "rotator") == true, "is a palindrome")
 print(challenge2(input: "Rats live on no evil star") == true, "is a palindrome")
 print(challenge2(input: "Never odd or even") == false, "is NOT a palindrome")
 print(challenge2(input: "Hello, world") == false, "is NOT a palindrome")
