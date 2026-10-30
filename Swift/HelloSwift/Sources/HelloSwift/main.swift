import StringTools

// Use command-line arguments if given, otherwise some samples.
let inputs = CommandLine.arguments.count > 1
    ? Array(CommandLine.arguments.dropFirst())
    : ["racecar", "A man, a plan, a canal: Panama", "hello"]

print("Hello, Swift!\n")
for text in inputs {
    let verdict = isPalindrome(text) ? "is" : "is not"
    print("\"\(text)\" \(verdict) a palindrome")
}
