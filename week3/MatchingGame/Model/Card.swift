//
//  Card.swift
//  MatchingGame
//
//  Created by 박주혁 on 2020/11/21.
//

import Foundation

class Card {
    let name: String
    var isFlipped: Bool = false

    init(name: String) {
        self.name = name
    }
}
