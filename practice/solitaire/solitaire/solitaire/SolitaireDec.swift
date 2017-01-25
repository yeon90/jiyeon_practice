//
//  File.swift
//  solitaire
//
//  Created by Ji yeon Park on 2017. 1. 23..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import Foundation

struct SolitaireDeck {
   
    
    func shuffleCards(){
       
        var stackArray : Array<Array<Int>> = [[]]
        var restArray : Array<Int> = []

        var cardSet : Set<Int> = []
        while (cardSet.count < 52) {
            cardSet.insert(Int(arc4random_uniform(52)))
        }
        
               var stackArrayS : Array<Int> = []
        var A = cardSet.popFirst()!
       
        for i in 0...6 {
            for _ in 0...i {
               stackArrayS.append(A)
            }
             stackArray.append(stackArrayS)
         }
        
    }

    func displayCards(){
    }

}
