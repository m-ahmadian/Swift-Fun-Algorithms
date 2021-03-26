import Foundation

// https://www.youtube.com/watch?v=eX6oGfb5RSk&list=PL0dzCUj1L5JFJlR7dpBfBtEJB84pCZJ3R&index=2

var oneHundred = [Int]()
for i in 0...100 {
    oneHundred.append(i)
}

func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    var lowIndex = 0
    var highIndex = array.count - 1
    
    while lowIndex <= highIndex {
        let midIndex = (lowIndex + highIndex) / 2
        
        if array[midIndex] == searchValue {
            print("\(searchValue) was found!")
            return true
        } else if searchValue > array[midIndex] {
            lowIndex = midIndex + 1
        } else if searchValue < array[midIndex] {
            highIndex = midIndex - 1
        }
    }
    print("\(searchValue) was not found!")
    return false
}

binarySearch(searchValue: 148, array: oneHundred)
