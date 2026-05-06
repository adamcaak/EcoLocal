//
//  FavoritesView.swift
//  EcoLocal
//
//  Created by Łukasz Adamczak on 06/05/2026.
//

import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject var viewModel: VendorViewModel
    
    var body: some View {
        List (
            viewModel.vendors.filter { $0.isFavorite }
        ) { vendor in
            NavigationLink {
                VendorDetailView(vendor: vendor)
            } label: {
                Text(vendor.name)
            }
        }
        .navigationTitle("Ulubione")
    }
}

#Preview {
    FavoritesView()
}
