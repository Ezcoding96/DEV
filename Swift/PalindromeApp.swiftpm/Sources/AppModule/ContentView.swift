import SwiftUI
import StringTools

struct ContentView: View {
    @State private var text = "A man, a plan, a canal: Panama"

    private var frequencies: [(word: String, count: Int)] {
        wordFrequencies(text)
            .map { (word: $0.key, count: $0.value) }
            .sorted { $0.count != $1.count ? $0.count > $1.count : $0.word < $1.word }
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("Text") {
                    TextField("Type something…", text: $text, axis: .vertical)
                        .autocorrectionDisabled()
                }

                Section("Palindrome?") {
                    ResultRow(isPalindrome: isPalindrome(text), isEmpty: text.isEmpty)
                }

                Section("Word counts") {
                    if frequencies.isEmpty {
                        Text("No words yet").foregroundStyle(.secondary)
                    }
                    ForEach(frequencies, id: \.word) { entry in
                        LabeledContent(entry.word, value: "\(entry.count)")
                    }
                }
            }
            .navigationTitle("Hello, Swift!")
        }
    }
}

private struct ResultRow: View {
    let isPalindrome: Bool
    let isEmpty: Bool

    var body: some View {
        if isEmpty {
            Text("Enter some text above").foregroundStyle(.secondary)
        } else {
            Label(
                isPalindrome ? "Yes, it's a palindrome" : "No, not a palindrome",
                systemImage: isPalindrome ? "checkmark.circle.fill" : "xmark.circle.fill"
            )
            .foregroundStyle(isPalindrome ? .green : .red)
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
