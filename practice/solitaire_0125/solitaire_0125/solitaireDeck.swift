//
//  File.swift
//  solitaire_0125
//
//  Created by Ji yeon Park on 2017. 1. 25..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import Foundation
struct SolitaireDeck {
    
    var stackArray : Array<Array<Int>> = []
    var restArray : Array<Int> = []
    
    mutating func shuffleCards(){
        var cardSet : Set<Int> = []
        while (cardSet.count < 52) {
            cardSet.insert(Int(arc4random_uniform(52)+1))
        }
        
        for i in 0...6 {
            var stackArrayS : Array<Int> = []
            for j in 0...i {
                stackArrayS.append(cardSet.popFirst()!)
            }
            stackArray.append(stackArrayS)
        }
        
        for i in 0...23 {
            restArray.append(cardSet.popFirst()!)
        }
    }
}
