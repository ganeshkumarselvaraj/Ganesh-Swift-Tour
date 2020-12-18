//  main.swift
//  Swift Tour
//
//  Created by Ganesh Kumar Selvaraj on 24/10/20.
//

import Foundation

class Main {
    init() {
        executeStringGames()
    }
    
    func executeStringGames() {
        _ = StringGames()
    }
}

_ = Main()

func pairCount(numbers: [Int]) -> Int {
    var noOfPair = 0
    var alreadyChecked = [Int]()
    for i in 0..<numbers.count {
        var pieceCnt = 0;
        if !alreadyChecked.contains(numbers[i]) {
            for j in 0..<numbers.count {
                if numbers[i] == numbers[j]{
                    alreadyChecked.append(numbers[i])
                    pieceCnt += 1
                }
            }
            let pair = Int(pieceCnt / 2)
            noOfPair += pair
        }
    }
    print("No of pair:: \(noOfPair)")
    return noOfPair
}

var number: [Int] = [2,3,1,2,1,3,1,1]

pairCount(numbers: number)

var arr1: [Int] = [1,3,5,6,7]

var cnvrtSet: Set<Int> = [2,4,5,6,7,5]
print("set: \(cnvrtSet)")


var temp = [1,2,4,5,6,6,6,1,2,1,1,2]


func findContiuesSubArray(numbers: [Int]) -> [Int] {
//    var ans = [[Int]]()
    var outurArr = [[Int]]()
    for value in 0..<numbers.count {
        var innerArr = [Int]()
        for value1 in 0...value {
            innerArr.insert(numbers[value1], at: value1)
        }
        outurArr.insert(innerArr, at: value)
//        print(type(of: temp[0...value]))
//        var tempArrat [Int] = temp[0...value]
//        ans.insert(tempArrat)
    }
    print("anse\(outurArr)")
    return [0]
}

findContiuesSubArray(numbers: temp)

var tempArr = [1,2,3]
print("Input 1 :: \(tempArr)")
tempArr.append(55)
print("Appended :: \(tempArr)")

var a = 0;
while a < 5 {
    print("A:: \(a)")
//    if a==3 {
//        continue
//    }
    a += 1;
}

func reverseString(sentence: String, answer: String) {
    
    var charOfArray = Array(sentence)
    var temp = [Character]()
    var answer = answer
    
    while (!charOfArray.isEmpty) {
        temp.append(charOfArray[charOfArray.count-1])
        charOfArray.remove(at: charOfArray.count-1)
        if(!charOfArray.isEmpty) {
            if (charOfArray[charOfArray.count-1] == " ") {
                charOfArray.remove(at: charOfArray.count-1)
                answer += String(temp).reversed() + " "
                temp = [Character]()
                reverseString(sentence: String(charOfArray), answer: answer)
            }
        } else {
//            print("kk")
            answer += String(temp).reversed()
            print("Output:: \(answer)")
        }
    }
}
reverseString(sentence: "Alpha beta gamma", answer: "")

func reverseStr(sentence: String, answer: String) {
    var words = sentence.split(separator: " ")
    var answer = answer
    
    if (words.count > 0) {
        answer += String(words[words.count - 1])
        words.remove(at: words.count - 1)
        if (words.count > 0) {
            answer += " "
        }
        reverseStr(sentence: String(words.joined(separator: " ")), answer: String(answer))
    } else {
        print("Rever: \(answer)")
    }
}

reverseStr(sentence: "ILoveIndia", answer: "")

//func getWords(sentence: String, words: [String]) -> [String]{
//    print("Input String \(sentence)")
//    var charOfSentece = Array(sentence)
//    var words = words
//
//    if sentence.count > 0 {
//        for (index,char) in charOfSentece.enumerated() {
//            if char == " " {
//                words.append(String(charOfSentece[0...index-1]))
//                charOfSentece.remove(at: index)
//    //            print("Balance: \( String(charOfSentece[index...charOfSentece.count-1]))")
//                getWords(sentence: String(charOfSentece[index...charOfSentece.count-1]), words: words)
//            }
//            if index == charOfSentece.count - 1 {
//                // last word
//                words.append(String(charOfSentece[0...index]))
//                for index in 0..<words.count {
//                    print("words \(words[words.count - (index + 1)])")
//                }
//                return words
//            }
//        }
//    }
//    return words
//}

//getWords(sentence: "Alpha Beta Comma", words: [])

//func findClosest(first: [Int], second: [Int], target: Int) -> Int{
//    var firstNearest : Int?
//
//    var secondNearest : Int?
//
//    for x in first {
//        for y in second {
//            print("x: \(x) y: \(y): sum:\(x+y)")
//            let sum1 = sum(a: x, b: y)
//            firstNearest = target - sum1;
//
//            if let secondNearestVal = secondNearest {
//                if (secondNearestVal < firstNearest!) {
//                    firstNearest = secondNearestVal
//                    secondNearest = firstNearest
//                }
//            } else {
//                secondNearest = firstNearesthhdhzzzzz
//            }
//            break
//        }
//        break
//    }
//    print("firstNearest: \(firstNearest!)")
//    print("secondNearest: \(secondNearest!)")
//    return firstNearest!
//}

func sum(a: Int, b: Int) -> Int{
    return a+b;
}

//findClosest(first: [1,3,6,7], second: [6,5,3,1], target: 10)

func hasCommonValue(first: [String], second: [String]) -> Bool {
    
    var temp = [String:String]()
    for word in first {
        if (temp[word] != word) {
            temp[word] = word
        }
    }
    for word in second {
        if (temp[word] != word) {
            temp[word] = word
        } else {
            return true
        }
    }
    return false
}
let ans = hasCommonValue(first: ["a","b","d","e","h"], second: ["u","y","x" ])
print("Ans:: \(ans)")
//print("af:: ")

class Student {
    var name = "Ganesh"
    var gender = "Male"
}

var stud = Student()
print("Gender: \(stud.gender)")

func findClosestPairSum(first: [Int], second: [Int], target: Int) -> Int {
    let pair = findPair(first: first, second: second)
    print("Pairs:: \(pair)")
    let pairDiff = pairSumDiffToTarget(pairs: pair)
    print("pairDiff:: \(pairDiff)")
    let leastDiff = findLeaseDiff(pairs: pairDiff, target: target)
    print("leastDiff:: \(leastDiff)")
    return leastDiff
}

func findPair(first: [Int], second: [Int]) -> [[Int]] {
    var temp = [Int]()
    var pairCollection = [[Int]]()
    for firstValue in first {
        for secondValue in second {
            temp.append(firstValue)
            temp.append(secondValue)
            pairCollection.append(temp)
            temp = [Int]()
        }
    }
    return pairCollection
}

func pairSumDiffToTarget(pairs: [[Int]]) -> [[Int]: Int] {
    var sumOfPairs = [[Int]: Int]()
    for pair in pairs {
        sumOfPairs[pair] = sumOfArray(numbers: pair)
    }
    return sumOfPairs
}

func sumOfArray(numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

func findLeaseDiff(pairs: [[Int]: Int], target: Int) -> Int {
    var temp = [Int]()
    for(key, value) in pairs {
        if value > target {
            temp.append(value - target)
            print("Pair \(key) :: target \(target) ::value \(value) :: \(value-target)")
        } else {
            temp.append(target - value)
            print("Pair \(key) :: target \(target) ::value \(value) :: \(target - value)")
        }
    }
    print("Temp sorted \(temp.sorted())")
    return temp.sorted()[0]
}

findClosestPairSum(first: [1,5,6], second: [6,4,9], target: 10)

func insertZeroAfterTarget(numbers: [Int], times: Int) -> [Int] {
    var timesSum = 0
    var answer = [Int]()
    for number in numbers {
        answer.append(number)
        if number == 1 {
            timesSum += 1
        } else {
            timesSum = 0
        }
        
        if(timesSum == times) {
            answer.append(0)
            timesSum = 0
        }
    }
    return answer
}
var numbers = [1,1,0,1,0,0,0,1,1,1,0,1,1,1,1,0,1];
print("Zero: \(insertZeroAfterTarget(numbers: numbers, times: 3))")
