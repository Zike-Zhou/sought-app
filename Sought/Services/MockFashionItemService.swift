//
//  MockFashionItemService.swift
//  Sought
//
//  Created by Codex on 5/7/26.
//

import Foundation

struct MockFashionItemService: FashionItemProviding {
    func fetchFashionItems() -> [FashionItem] {
        [
            FashionItem(
                brand: "The Row",
                productName: "Aster Leather Coat",
                price: 6800,
                description: "A floor-length leather coat with a fluid, architectural drape and softly structured shoulders.",
                yearIntroduced: 2024,
                artwork: .obsidian
            ),
            FashionItem(
                brand: "Lemaire",
                productName: "Pressed Wool Blouson",
                price: 1490,
                description: "A cropped wool blouson cut with a rounded silhouette and a clean concealed placket.",
                yearIntroduced: 2023,
                artwork: .parchment
            ),
            FashionItem(
                brand: "Bottega Veneta",
                productName: "Intrecciato Cabat Tote",
                price: 5200,
                description: "A handwoven leather tote that balances volume, tactility, and understated luxury.",
                yearIntroduced: 2022,
                artwork: .oxblood
            ),
            FashionItem(
                brand: "Ann Demeulemeester",
                productName: "Layered Silk Shirt",
                price: 1195,
                description: "A sheer silk shirt with elongated cuffs, tonal layering, and a romantic archival attitude.",
                yearIntroduced: 2021,
                artwork: .slate
            ),
            FashionItem(
                brand: "Jil Sander",
                productName: "Frame Shoulder Bag",
                price: 2100,
                description: "A sculptural shoulder bag with polished edges and a compact silhouette for everyday restraint.",
                yearIntroduced: 2024,
                artwork: .olive
            ),
            FashionItem(
                brand: "Dries Van Noten",
                productName: "Printed Satin Trousers",
                price: 930,
                description: "Relaxed satin trousers finished with a painterly floral print and a fluid wide leg.",
                yearIntroduced: 2020,
                artwork: .sand
            ),
            FashionItem(
                brand: "Rick Owens",
                productName: "Geobasket Sneakers",
                price: 1325,
                description: "High-top sneakers with exaggerated proportions, contrast panels, and a sharp monochrome finish.",
                yearIntroduced: 2019,
                artwork: .midnight
            ),
            FashionItem(
                brand: "Maison Margiela",
                productName: "Tabi Ballerina",
                price: 990,
                description: "A split-toe ballerina rendered in brushed leather with a quietly iconic profile.",
                yearIntroduced: 2023,
                artwork: .chrome
            )
        ]
    }
}
