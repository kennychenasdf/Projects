//
//  Tester+Strings.swift
//  String
//
//  Created by Luat on 8/2/21.
//

import Foundation

extension Tester {

    /// Using print command
    func printWord(word: String) {
           print(word)
    }
    
    /// input "hello" should print "HELLO"
    func printUpperCase(word: String) {
        print(word.uppercased())
    }
    
    /// Using for loop, print each char in word
    func printLetters(word: String) {
        for x in word{
            print(x)
        }
    }
    
    /// given a word, flip its characters, and print the result
    /// e.g. football -> llabtoof
    func flipWord(word: String) {
        print(String(word.reversed()))
    }
    
    /// Using for-in-enumerated(), print odd-position chars in word
    func printOddCharsEnumerated(word: String) {
        for(n, c) in word.enumerated(){
            if n%2 == 0 {
                print(c);
            }
        }
    }
    
    /**
     Pig Latin:
     1) Move the first letter to the end and add "ay"
     pig -> igpay
     latin -> atinay
     2) IF word starts with a vowel, add "yay" to the word
     one -> oneyay
     */
    func printPigLatin(word: String) {
    let fst = word[word.startIndex];
        if fst == "a" || fst == "e" || fst == "o" || fst == "i" || fst == "u"  {
            print("\(word)yay")
        } else{
            print("\(word.suffix(word.count-1))\(word.prefix(1))ay")
        }
    }
    
    /// Using loop and string.index, return true if input is a palindrome
    func isPalindrome(word: String) -> Bool {
            for (i, _) in word.enumerated(){
                if(word.suffix(word.count-i).prefix(1) !=  word.suffix(i+1).prefix(1)){
                    return false
                }
            }
            return true
        }
}
