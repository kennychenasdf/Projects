//
//  Tester.swift
//  Array
//
//  Created by Luat on 5/19/21.
//

import Foundation
import UIKit

class Tester {
    static let shared = Tester()
    
    /// 1. Write a function that takes an array of numbers and returns an array with each of the numbers multiplied by 2
    func multiplyByTwo(numbers original: [Int]) -> [Int] {
        var xd = original
        for i in original.indices {
            xd[i] *= 2
        }
        return xd
    }

    /// 2. Write a function to return the last half of the array, not including the median
    func lastHalf(array: [Int]) -> [Int] {
        return array.suffix(array.count/2)
        
    }

    /// 3. Write a function that can creates an array populated with integers going from start (input) to end (input)
    func createArray(from start: Int, to end: Int) -> [Int] {
        var sol = [Int]()
        var s = start
        while s <= end {
            sol.append(s)
            s += 1
        }
        return sol;
    }

    /**
        4. Create this 2-D array
        [[1,2,3],
        [4,5,6],
        [7,8,9]]
     */
    func create2DArray() -> [[Int]] {
        var arr = [[Int]]()
        arr.append([1,2,3])
        arr.append([4,5,6])
        arr.append([7,8,9])
        return arr;
    }

    /// 5. Write a function that returns the number of pairs of elements that sums up to 0
    /// Input [1,2,3,-1,-2,-4] -> Output 2
    func findPairs(nums: [Int]) -> Int {
        var sol = 0;
        
        for (i, x) in nums.enumerated() {
                for y in nums[i+1 ..< nums.count] {
                    if x + y == 0 {
                        sol += 1
                    }
                }
            }
        
        
        return sol;
    }
    
    /// 6. Returns an array of indexes where the char occurs in input word
    func positionsOf(character: Character, in word: String) -> [Int] {
        var sol = [Int]()
        
        for (i, x) in word.enumerated() {
            if x == character {
                sol.append(i)
            }
        }
        
        
        return sol
    }
    
    /**
        7. Scenario: There is a conference room, and an array of `I`s and `O`s.
        `I` means a person enters the room and needs a chair.
        `O` means a person leaves the room and a chair opens up.
        Find the maximum number of chairs required to allow everyone (at any point) to have a seat
        Ex. [ I, I, O] -> 2
     */
    func minimumChairs(array: [Character]) -> Int {
        var sol = 0;
        var run = 0;
        
        for x in array {
            if x == "I" {
                run += 1
                sol = max(sol, run)
            } else {
                run -= 1
            }
        }
        
        return sol;
    }
    
    /// 8. Pig latin but with words separated by spaces
    func pigLatinSentence(sentence: String) -> String {
        var array = sentence.components(separatedBy: " ")

        for (i, _) in array.enumerated() {
            array[i] = returnPigLatin(word: array[i])
        }
        print(array)
        return array.joined(separator: " ")
    }
    
    func returnPigLatin(word: String) -> String {
        let fst = word[word.startIndex];
            if fst == "a" || fst == "e" || fst == "o" || fst == "i" || fst == "u"  {
                return("\(word)yay")
            } else{
                return("\(word.suffix(word.count-1))\(word.prefix(1))ay")
            }
    }
    
    /**
        9. Find the best day to first BUY and then a day occuring after that day to SELL. Return the maximum profit (buy price - sell price)
        var prices = [7,1,5,3,6,4] -> returns 5
     */
    
    
    func maxProfit(array: [Int]) -> Int {
        var min = Int.max;
        var sol = 0
        for (i, _) in array.enumerated() {
            if array[i] < min{
                min = array[i]
            } else if array[i] - min > sol {
                sol = array[i] - min
            }
        }
        
        return sol;
    }
    
    /**
        10. Input: array of integers: [1, 4, 8, 4] with 1 having the highest priority.
        Output: reduce the distance bettwen priorities but keep the same priority ordering
        [1, 4, 8, 4] -> [1, 2, 3, 2]
     */
    func reduceDistanceKeepPriority(array: [Int]) -> [Int] {
        var yep = array
        var c = 1;
        var dict: [Int: Int] = [:];
        for (i, x) in array.enumerated() {
            if dict[x] == nil {
                dict[x] = c;
                c += 1;
            }
            yep[i] = dict[x, default: 0]
        }
        
        return yep
        
    }
}
