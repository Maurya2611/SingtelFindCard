//
//  Card.swift
//  FindCard
//
//  Created by Chandresh Maurya on 13/05/20.
//  Copyright © 2020 com.chandresh. All rights reserved.
//

import Foundation
/// Holds the card data.
class Card {
    private(set) var name: String
    var status: CardStatus = .back
    init(name: String) {
        self.name = name
    }
}
