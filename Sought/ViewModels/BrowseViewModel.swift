//
//  BrowseViewModel.swift
//  Sought
//
//  Created by Codex on 5/7/26.
//

import Combine
import Foundation

@MainActor
final class BrowseViewModel: ObservableObject {
    private let fashionItemProvider: FashionItemProviding

    @Published private(set) var items: [FashionItem] = []

    init(fashionItemProvider: FashionItemProviding? = nil) {
        self.fashionItemProvider = fashionItemProvider ?? MockFashionItemService()
        loadItems()
    }

    func loadItems() {
        items = fashionItemProvider.fetchFashionItems()
    }
}
