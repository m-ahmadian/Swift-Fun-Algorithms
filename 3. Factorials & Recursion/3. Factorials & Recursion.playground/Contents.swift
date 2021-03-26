import Foundation

// https://www.youtube.com/watch?v=EManXGSm_ak&list=PL0dzCUj1L5JFJlR7dpBfBtEJB84pCZJ3R&index=3


//// For in loop
func factorial(of number: UInt) -> UInt {
    
    if number == 0 {
        return 1
    }
    
    var result: UInt = 1
    for i in 1...number {
        result *= i
    }
    return result
}

print(factorial(of: 0))



// Recursion
func recursiveFactorial(of number: UInt) -> UInt {
    while number > 1 {
        return number * recursiveFactorial(of: number - 1)
    }
    return 1
}

print(recursiveFactorial(of: 5))
