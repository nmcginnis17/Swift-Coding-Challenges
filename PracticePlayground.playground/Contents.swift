import Foundation

func challenge7a(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

print(challenge7a(input: "a   b   c"))
print(challenge7a(input: "    a"))
print(challenge7a(input: "abc"))
