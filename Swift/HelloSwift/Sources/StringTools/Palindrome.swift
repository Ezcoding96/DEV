/// Returns true if `text` reads the same forwards and backwards,
/// ignoring case, spaces and punctuation.
public func isPalindrome(_ text: String) -> Bool {
    let chars = text.lowercased().filter { $0.isLetter || $0.isNumber }
    return chars.elementsEqual(chars.reversed())
}

/// Counts how often each word appears, ignoring case.
public func wordFrequencies(_ text: String) -> [String: Int] {
    let words = text.lowercased().split { !$0.isLetter && !$0.isNumber }
    return words.reduce(into: [:]) { counts, word in counts[String(word), default: 0] += 1 }
}
