import Foundation

// https://www.youtube.com/watch?v=yxORFL_UipQ&list=PL0dzCUj1L5JFJlR7dpBfBtEJB84pCZJ3R

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

var oneThousanNumbers = [Int]()
for i in 0...1000 {
    oneThousanNumbers.append(i)
}

for num in oneThousanNumbers {
    if num % 15 == 0 {
        print("FizzBuzz")
    } else if num % 3 == 0 {
        print("\(num) Fizz")
    } else if num % 5 == 0 {
        print("\(num) Buzz")
    } else {
        print("\(num)")
    }
}
