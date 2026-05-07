//
//  FashionItem.swift
//  Sought
//
//  Created by Codex on 5/7/26.
//

import Foundation

struct FashionItem: Identifiable, Hashable {
    let id: UUID
    let brand: String
    let productName: String
    let price: Decimal
    let description: String
    let yearIntroduced: Int
    let artwork: ArtworkStyle

    init(
        id: UUID = UUID(),
        brand: String,
        productName: String,
        price: Decimal,
        description: String,
        yearIntroduced: Int,
        artwork: ArtworkStyle
    ) {
        self.id = id
        self.brand = brand
        self.productName = productName
        self.price = price
        self.description = description
        self.yearIntroduced = yearIntroduced
        self.artwork = artwork
    }
}

extension FashionItem {
    enum ArtworkStyle: String, CaseIterable, Hashable {
        case obsidian
        case parchment
        case oxblood
        case slate
        case olive
        case sand
        case midnight
        case chrome
    }
}

extension FashionItem {
    var formattedPrice: String {
        let number = NSDecimalNumber(decimal: price)
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 0
        formatter.locale = Locale(identifier: "en_US")
        return formatter.string(from: number) ?? "$0"
    }
}
