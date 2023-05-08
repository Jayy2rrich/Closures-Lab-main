import UIKit
/*:
1) Create a closure assigned to a constant fourClosure that has no parameters and returns an Int. The body of the closure should always return the value 4. Call the closure once times..*/
let fourClosure: () -> Int = {
    return 4
}

let result1 = fourClosure()
print(result1)
/*:
2) Write a closure assigned to a constant square that takes an integer as input and returns its square */
let square: (Int) -> Int = { number in
    return number * number
}

let input = 4
let result2 = square(input)
print(result2)
/*:
3) Write a closure assigned to a constant sum that takes two integers as input and returns their sum:
*/
let sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

let result3 = sum(130, 832)
/*:
4) Write  a closure assigned to a constant sumOfEvens that takes an array of integers as input and returns the sum of all even numbers
*/
let sumOfEvens: ([Int]) -> Int = { (numbers: [Int]) -> Int in
    return numbers.filter { $0 % 2 == 0 }
}
let result4 = sumOfEvens([1,2,3,4,5,6,7,8,9])
/*:
5) Using the code below, use the map function to create an array of Int values, whose values are equal to the original integer value, plus 1. Use $0 as you iterate through the values of the array. Print the resulting collection.
*/
let testScores = [65,80, 88, 90, 47]

let incrementedScores = testScores.map { $0 + 1 }

print(incrementedScores)
/*:
6) Using the code below, use the filter function to create a new array of String values. The new array should only include Strings longer than four characters. Use $0 as you iterate through the values of the array.  Print the resulting collection.
*/
let subjects = ["Math", "Computer Science", "English", "Chemistry", "History", "Gym"]

let longerSubjects = subjects.filter { $0.count > 4 }

print(longerSubjects)
/*:
7) Using the code below, use the reduce function to subtract all of the values within the array from the starting value 100. Print the resulting value.
*/
let damageTaken = [25, 10, 15, 20, 0]

let remainingHealth = damageTaken(100) {$0 - $1}

print(remainingHealth)
