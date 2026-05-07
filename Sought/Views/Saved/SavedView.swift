//
//  SavedView.swift
//  Sought
//
//  Created by Codex on 5/7/26.
//

import SwiftUI

struct SavedView: View {
    var body: some View {
        PlaceholderSectionView(
            title: "Saved",
            eyebrow: "PERSISTENCE LATER",
            description: "Liked and bookmarked fashion items will collect here once persistence is introduced."
        )
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
