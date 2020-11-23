//
//  CardGameManager.swift
//  MatchingGame
//
//  Created by 박주혁 on 2020/11/21.
//

import Foundation

class CardGameManager {
    static let originDataSet = ["사과", "배", "포도", "귤", "수박"]
    static let maxFlippedCount = 2

    var cardItems: [Card]

    init() {
        cardItems = Self.originDataSet.map { item in Card(name: item) }
        cardItems.append(contentsOf: Self.originDataSet.map { item in Card(name: item) })
        cardItems.shuffle()
    }

    func didTapCard(at indexPath: IndexPath) {
        let cardItem = cardItems[indexPath.item]
        cardItem.isFlipped = !cardItem.isFlipped

        let flippedCards = getFlippedCards(from: cardItems)
        if flippedCards.count > Self.maxFlippedCount {
            filpAll(cards: flippedCards)
        }
    }

    private func getFlippedCards(from cards: [Card]) -> [Card] {
        return cards.filter { card in
            return card.isFlipped == true
        }
    }

    private func filpAll(cards: [Card]) {
        for card in cards {
            card.isFlipped = false
        }
    }
}
