//
//  Card.swift
//  concentration-game
//
//  Created by Giorgi Ghughunishvili on 1/2/18.
//  Copyright © 2018 Giorgi Ghughunishvili. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
