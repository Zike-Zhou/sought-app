//
//  EditorialImageView.swift
//  Sought
//
//  Created by Codex on 5/7/26.
//

import SwiftUI

struct EditorialImageView: View {
    let artwork: FashionItem.ArtworkStyle

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0, style: .continuous)
                .fill(backgroundGradient)

            VStack(spacing: 0) {
                Spacer(minLength: 0)

                RoundedRectangle(cornerRadius: 28, style: .continuous)
                    .fill(shapeFill)
                    .frame(width: 110, height: 150)
                    .rotationEffect(.degrees(-9))
                    .blur(radius: 0.4)
                    .overlay(alignment: .topTrailing) {
                        Circle()
                            .fill(.white.opacity(0.16))
                            .frame(width: 36, height: 36)
                            .offset(x: 18, y: -18)
                    }
                    .padding(.bottom, 22)
            }

            LinearGradient(
                colors: [.clear, .black.opacity(0.16)],
                startPoint: .top,
                endPoint: .bottom
            )
        }
        .overlay(alignment: .topLeading) {
            Rectangle()
                .fill(.white.opacity(0.08))
                .frame(width: 84, height: 1)
                .padding(18)
        }
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
    }

    private var backgroundGradient: LinearGradient {
        switch artwork {
        case .obsidian:
            return LinearGradient(colors: [Color(hex: "1B1B1D"), Color(hex: "0C0C0D")], startPoint: .topLeading, endPoint: .bottomTrailing)
        case .parchment:
            return LinearGradient(colors: [Color(hex: "D9D1C7"), Color(hex: "968D83")], startPoint: .topLeading, endPoint: .bottomTrailing)
        case .oxblood:
            return LinearGradient(colors: [Color(hex: "4D141A"), Color(hex: "1E0A0D")], startPoint: .topLeading, endPoint: .bottomTrailing)
        case .slate:
            return LinearGradient(colors: [Color(hex: "5A5D66"), Color(hex: "1C1D21")], startPoint: .topLeading, endPoint: .bottomTrailing)
        case .olive:
            return LinearGradient(colors: [Color(hex: "5E6652"), Color(hex: "272A23")], startPoint: .topLeading, endPoint: .bottomTrailing)
        case .sand:
            return LinearGradient(colors: [Color(hex: "C5B497"), Color(hex: "736556")], startPoint: .topLeading, endPoint: .bottomTrailing)
        case .midnight:
            return LinearGradient(colors: [Color(hex: "202636"), Color(hex: "090B10")], startPoint: .topLeading, endPoint: .bottomTrailing)
        case .chrome:
            return LinearGradient(colors: [Color(hex: "A1A7AF"), Color(hex: "484E57")], startPoint: .topLeading, endPoint: .bottomTrailing)
        }
    }

    private var shapeFill: LinearGradient {
        switch artwork {
        case .obsidian:
            return LinearGradient(colors: [.white.opacity(0.08), .white.opacity(0.02)], startPoint: .top, endPoint: .bottom)
        case .parchment:
            return LinearGradient(colors: [Color(hex: "FAF5EE"), Color(hex: "B7AB9A")], startPoint: .top, endPoint: .bottom)
        case .oxblood:
            return LinearGradient(colors: [Color(hex: "8C3944"), Color(hex: "491319")], startPoint: .top, endPoint: .bottom)
        case .slate:
            return LinearGradient(colors: [Color(hex: "BEC5CF"), Color(hex: "66707C")], startPoint: .top, endPoint: .bottom)
        case .olive:
            return LinearGradient(colors: [Color(hex: "C3CCB4"), Color(hex: "727B68")], startPoint: .top, endPoint: .bottom)
        case .sand:
            return LinearGradient(colors: [Color(hex: "F0E0C9"), Color(hex: "BA9E7B")], startPoint: .top, endPoint: .bottom)
        case .midnight:
            return LinearGradient(colors: [Color(hex: "DEE4F0"), Color(hex: "687185")], startPoint: .top, endPoint: .bottom)
        case .chrome:
            return LinearGradient(colors: [Color(hex: "F0F2F4"), Color(hex: "959CA6")], startPoint: .top, endPoint: .bottom)
        }
    }
}

private extension Color {
    init(hex: String) {
        let sanitized = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: sanitized).scanHexInt64(&int)

        let red = Double((int >> 16) & 0xFF) / 255
        let green = Double((int >> 8) & 0xFF) / 255
        let blue = Double(int & 0xFF) / 255

        self.init(red: red, green: green, blue: blue)
    }
}
