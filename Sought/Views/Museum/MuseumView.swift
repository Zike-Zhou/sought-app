//
//  MuseumView.swift
//  Sought
//
//  Created by Codex on 5/7/26.
//

import SwiftUI

struct MuseumView: View {
    var body: some View {
        PlaceholderSectionView(
            title: "Archival Museum",
            eyebrow: "EDITORIAL SPACE",
            description: "Brand histories, timelines, and collection storytelling will be shaped here as a distinct archival experience."
        )
    }
}

struct MuseumView_Previews: PreviewProvider {
    static var previews: some View {
        MuseumView()
    }
}
