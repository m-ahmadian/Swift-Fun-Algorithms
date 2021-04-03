import Foundation

// https://www.youtube.com/watch?v=Es4Tk0nU1OQ&list=PL0dzCUj1L5JFJlR7dpBfBtEJB84pCZJ3R&index=6


// My First Implementation - Recursive

func fibRecursive(for number: Int) -> Int {
    
    if number == 1 {
        return 1
    } else if number > 1 {
        return fibRecursive(for: number - 1) + fibRecursive(for: number - 2)
    }
    return 0
}


// My Second Implementation - Iterative

func fibIterative(for numSteps: Int) -> [Int] {
    var result = [Int]()
    var sum = 0
    for i in 0...numSteps {
        if i == 0 || i == 1 {
            result.append(i)
        } else {
            sum = result[i - 1] + result[i - 2]
            result.append(sum)
        }
    }
    return result
}

print(fibRecursive(for: 8))

print(fibIterative(for: 10))




// Suggested Implementation

// Iterative
func fibForNumSteps(numSteps: Int) -> [Int] {
    var sequnce = [0, 1]
    
    if numSteps <= 1 {
        return sequnce
    }
    
    for _ in 0...numSteps - 2 {
        let first = sequnce[sequnce.count - 2]
        let last = sequnce.last!
        sequnce.append(first + last)
    }
    
    return sequnce
}

print(fibForNumSteps(numSteps: 8))


// Recursive
func fibRecursionForNumSteps(numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    return [first + second] + fibRecursionForNumSteps(numSteps: numSteps - 1, first: second, second: first + second)
}

[0 , 1] + fibRecursionForNumSteps(numSteps: 24, first: 0, second: 1)
