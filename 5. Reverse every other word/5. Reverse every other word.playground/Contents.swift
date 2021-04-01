import Foundation

// https://www.youtube.com/watch?v=4sv0QmJZ1OY&list=PL0dzCUj1L5JFJlR7dpBfBtEJB84pCZJ3R&index=5



// My Implementation

let forwardString = "I am trying to make progress everyday and change the world for the better"

func reverseWords(in sentece: String) -> String {
    let allWords = sentece.components(separatedBy: " ")
    var reversedWordsArray = [String]()
    var reversedSentece = ""
    var index = 0
    
    for word in allWords {
        if index % 2 == 0 {
            reversedWordsArray.append(word)
        } else {
            reversedWordsArray.append(reverseChar(in: word))
        }
        index += 1
    }
    
    reversedSentece = reversedWordsArray.joined(separator: " ")
    
    return reversedSentece
}



func reverseChar(in word: String) -> String {
    var reversedWord = ""
    for char in word {
        reversedWord = "\(char)\(reversedWord)"
    }
    return reversedWord
}

print(reverseChar(in: "hello"))


print(reverseWords(in: forwardString))




// Suggested Implementation

let sampleSentence = "Let's start today by implementing a very interesting challenge!"

func reverseWordsInSentence(sentence: String) -> String {
    let allWords = sentence.components(separatedBy: " ")
    var newSentence = ""
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        if newSentence != "" {
            newSentence += " "
        }
        
        
        if index % 2 == 1 {
            let reverseWord = String(word.reversed())
            newSentence += reverseWord.stringByRemovingVowels()
        } else {
            newSentence += word.stringByRemovingVowels()
        }
    }
    
    return newSentence
}

extension String {
    func stringByRemovingVowels() -> String {
        var newWord = self
        
        for vowel in ["a", "e", "i", "o", "u"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        return newWord
    }
}

print(reverseWordsInSentence(sentence: sampleSentence))
