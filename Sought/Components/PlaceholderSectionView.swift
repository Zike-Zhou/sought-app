//
//  PlaceholderSectionView.swift
//  Sought
//
//  Created by Codex on 5/7/26.
//

import SwiftUI

struct PlaceholderSectionView: View {
    let title: String
    let eyebrow: String
    let description: String

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color.black, Color(red: 0.1, green: 0.1, blue: 0.11)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 16) {
                    Text(eyebrow)
                        .font(.caption)
                        .tracking(1.8)
                        .foregroundStyle(.white.opacity(0.45))

                    Text(title)
                        .font(.system(size: 34, weight: .semibold, design: .serif))
                        .foregroundStyle(.white)

                    Text(description)
                        .font(.body)
                        .foregroundStyle(.white.opacity(0.7))
                        .fixedSize(horizontal: false, vertical: true)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .padding(24)
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PlaceholderSectionView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderSectionView(
            title: "Saved",
            eyebrow: "PERSISTENCE LATER",
            description: "Liked and bookmarked fashion items will collect here once persistence is introduced."
        )
    }
}
