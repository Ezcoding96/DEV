import Testing
@testable import StringTools

@Test(arguments: ["racecar", "A man, a plan, a canal: Panama", "", "a", "12321"])
func palindromes(_ text: String) {
    #expect(isPalindrome(text))
}

@Test(arguments: ["hello", "swift", "ab"])
func nonPalindromes(_ text: String) {
    #expect(!isPalindrome(text))
}

@Test func countsWords() {
    let counts = wordFrequencies("The cat and the hat.")
    #expect(counts["the"] == 2)
    #expect(counts["cat"] == 1)
    #expect(counts.count == 4)
}
