//
//  ContentView.swift
//  WordScramble
//
//  Created by Jason Cox on 9/25/24.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List {
            Section("Section 1") {
                Text("Static Row 1")
                Text("Static Row 2")
            }
            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic Row \($0)")
                }
            }
        }
        List(people, id: \.self) {
            Text("Person: \($0)")
        }
        .padding()
    }
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt") {
            // we found the file in our bundle!
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded the file into a string
            }
        }
    }
    func testStrings() {
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
//        let letters = input.components(separatedBy: "\n")
//        let letterrandom = letters.randomElement()
//        let trimmed = letters.description.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

#Preview {
    ContentView()
}
