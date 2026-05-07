//
//  RootTabView.swift
//  Sought
//
//  Created by Codex on 5/7/26.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            BrowseView()
                .tabItem {
                    Label("Browse", systemImage: "square.grid.2x2")
                }

            DiscoverView()
                .tabItem {
                    Label("Discover", systemImage: "sparkles.rectangle.stack")
                }

            MuseumView()
                .tabItem {
                    Label("Museum", systemImage: "building.columns")
                }

            SavedView()
                .tabItem {
                    Label("Saved", systemImage: "bookmark")
                }
        }
        .preferredColorScheme(.dark)
        .tint(.white)
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
