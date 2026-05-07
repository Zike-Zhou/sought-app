//
//  ItemDetailView.swift
//  Sought
//
//  Created by Codex on 5/7/26.
//

import SwiftUI

struct ItemDetailView: View {
    let item: FashionItem

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                EditorialImageView(artwork: item.artwork)
                    .frame(height: 460)

                VStack(alignment: .leading, spacing: 18) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text(item.brand.uppercased())
                            .font(.caption)
                            .tracking(1.4)
                            .foregroundStyle(.white.opacity(0.55))

                        Text(item.productName)
                            .font(.system(size: 30, weight: .semibold, design: .serif))
                            .foregroundStyle(.white)

                        Text(item.formattedPrice)
                            .font(.headline)
                            .foregroundStyle(.white.opacity(0.92))
                    }

                    detailRow(title: "Description", value: item.description)
                    detailRow(title: "Year Introduced", value: String(item.yearIntroduced))
                }
                .padding(.horizontal, 2)
            }
            .padding(18)
            .padding(.bottom, 32)
        }
        .background(Color.black.ignoresSafeArea())
        .navigationBarTitleDisplayMode(.inline)
    }

    private func detailRow(title: String, value: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title.uppercased())
                .font(.caption2)
                .tracking(1.2)
                .foregroundStyle(.white.opacity(0.46))

            Text(value)
                .font(.body)
                .foregroundStyle(.white.opacity(0.88))
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.top, 2)
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetailView(item: MockFashionItemService().fetchFashionItems()[0])
        }
    }
}
