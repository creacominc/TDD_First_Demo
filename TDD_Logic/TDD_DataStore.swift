//
//  TDD_DataStore.swift
//  TDD_First_Demo
//
//  Created by Harold Tomlinson on 2024-02-26.
//

import Foundation

class TDD_DataStore
{
    func numberOfVowels(in string: String) -> Int
    {
        let vowels: [Character] = ["a", "e", "i", "o", "u",
                                   "A", "E", "I", "O", "U"]
        var numberOfVowels = 0

        print( "!!!!!!!!!" )
        print(  "RUNNING TDD_DataStore::numberOfVowels" )
        print( "!!!!!!!!!" )

        for character in string
        {
            if vowels.contains(character)
            {
                numberOfVowels += 1
            }
        }
        return numberOfVowels
    }    
}

