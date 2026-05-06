//
//  MainTabView.swift
//  EcoLocal
//
//  Created by Łukasz Adamczak on 06/05/2026.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            VendorsListView()
                .tabItem {
                    Label("Sprzedawcy", systemImage: "leaf.fill")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Ulubione", systemImage: "heart.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
        .environmentObject(VendorViewModel())
}
