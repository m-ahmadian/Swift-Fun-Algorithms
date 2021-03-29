import Foundation

// https://www.youtube.com/watch?v=EManXGSm_ak&list=PL0dzCUj1L5JFJlR7dpBfBtEJB84pCZJ3R&index=3



// My Implementation

let namesArray = ["James", "Jackie", "Allen", "Ali", "Mehrdad", "Mohammad", "Araz", "Delilah", "Megan", "Jackie", "Mehrdad", "Mehrdad"]

func mostCommonNames(array: [String]) -> String {
    
    var currentName = ""
    
    var higestCount = 0
    
    var mostCommonName = String()
    
    for i in 0...array.count - 2 {
        currentName = array[i]
        var count = 0
        
        for j in i + 1...array.count - 1 {
            if currentName == array[j] {
                count += 1
            }
        }
        if count > higestCount {
            higestCount = count
            mostCommonName = currentName
        }
    }
    
    return mostCommonName
}


mostCommonNames(array: namesArray)





// Suggested Implementation

func mostCommonNameInArray(array: [String]) -> String {
    
    var nameCountDict = [String: Int]()
    
    for name in array {
        if let count = nameCountDict[name] {
            nameCountDict[name] = count + 1
        } else {
            nameCountDict[name] = 1
        }
    }
    
    var mostCommonName = ""
    
    for key in nameCountDict.keys {
        if mostCommonName == "" {
            mostCommonName = key
        } else {
            let count = nameCountDict[key]!
            if count > nameCountDict[mostCommonName]! {
                mostCommonName = key
            }
        }
        print("\(key): \(nameCountDict[key]!)")
    }
    
    return mostCommonName
}


print(mostCommonNameInArray(array: namesArray))
