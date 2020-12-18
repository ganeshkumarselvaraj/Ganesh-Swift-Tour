//
//  StringGames.swift
//  Swift Tour
//
//  Created by Ganesh Kumar Selvaraj on 18/12/20.
//

import Foundation

class StringGames {
    init() {
        printNoOfTimesChar(sentence: "G2N3")
    }
    
    func printNoOfTimesChar(sentence: String) {
        var tempNumber = ""
        var tempChar = ""
        for (index,char) in Array(sentence).enumerated() {
            if char.isLetter {
                if let number = Int(tempNumber){
                    if (number > 0) {
                        printChar(letter: tempChar, times: number)
                        tempNumber = ""
                        tempChar = ""
                    }
                }
                tempChar += String(char)
            } else {
                tempNumber += String(char)
                if (index == Array(sentence).count-1) {
                    if let number = Int(tempNumber){
                        print("Temp Num \(number)")
                        if (number > 0) {
                            printChar(letter: tempChar, times: number)
                        }
                    }
                }
            }
        }
    }

    func printChar(letter: String, times: Int) {
        for _ in 0..<times {
            print(letter)
        }
    }
}
