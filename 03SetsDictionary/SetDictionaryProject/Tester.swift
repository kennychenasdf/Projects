//
//  Tester.swift
//  SetDictionaryProject
//
//  Created by Luat on 8/4/21.
//

import Foundation

struct Tester {
    /// Remove an array with the duplicated values removed
    func removeDups(nums: [Int]) -> [Int] {
        return Array(Set(nums))
    }
    
    /// Find the nums that exist in both arrays
    func findCommonNums(from firstNums: [Int], and secondNums: [Int]) -> [Int] {
        var fTemp = Set(firstNums)
        fTemp = fTemp.intersection(secondNums)
        
        return Array(Set(fTemp))
        
        
        
        
        
    }
    
    /// first: "hello", second: "bye" -> ["e"]
    func findMatchingLetters(firstWord: String, secondWord: String) -> [Character] {
        var fWord = Array(firstWord)
        return Array(Set(fWord).intersection(Set(secondWord)))
        
    }
    
    
    /// Create a dictionary of the counts of the letters, ignoring spaces
    func createCounter(string: String) -> [Character: Int] {
        var yep: [Character: Int] = [:]
        
        for x in string {
            if x != " " {
                yep[x, default: 0] += 1;
            }
        }
        return yep
    }
    
    /// Find most frequent letter in string: "hello there" -> "e"
    func mostFrequentLetter(string: String) -> Character {
        let ctr = createCounter(string: string)
        
        var max = 0;
        var sol: Character = " "
        
        for x in string {
            if ctr[x, default: -1] > max {
                max = ctr[x, default: -1]
                sol = x
            }
        }
        
        return sol
    }
    
    /// O(n) time: avoid nested for loops
    func findPairs(nums: [Int]) -> Int {
        var sol = 0
        var yep: [Int: Int] = [:]
        
        for x in nums {
            yep[x, default: 0] += 1;
            
        }
        
        for x in nums {
            let a = yep[x, default: 0]
            let b = yep[x * -1, default: 0]
            sol += min(a, b)
            yep[x, default: 0] = 0
            yep[x * -1, default: 0] = 0
        }
        return sol
    }
    
    /**
     Using Dictionary:
     Input: array of integers: [1, 4, 8, 1] with 1 having the highest priority.
     Output: reduce the distance bettwen priorities but keep the same priority ordering
     [1, 4, 8, 1] -> [1, 2, 3, 1]
     */
    func reduceDistanceKeepPriority(array: [Int]) -> [Int] {
        var yep = array
        var c: Int = 1;
        
        var dict : [Int: Int] = [:]
        
        for x in yep.sorted() {
            if dict[x, default: 0] == 0 {
                dict[x] = c;
                c += 1
            }
        }
        
        for (i, _) in yep.enumerated() {
            yep[i] = dict[yep[i], default: 0]
        }
        
        return yep
    }
    
}
