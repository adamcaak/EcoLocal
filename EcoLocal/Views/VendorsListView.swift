//
//  VendorsListView.swift
//  EcoLocal
//
//  Created by Łukasz Adamczak on 03/05/2026.
//

import SwiftUI

struct VendorsListView: View {
    
    @StateObject private var viewModel = VendorViewModel()
    
    var body: some View {
        List(viewModel.filteredVendors) { vendor in
            NavigationLink {
                VendorDetailView(vendor: vendor)
            } label: {
                HStack {
                    Image(systemName: "leaf")
                        .foregroundStyle(.green)
                    
                    VStack(alignment: .leading) {
                        Text(vendor.name)
                            .font(.headline)
                        
                        Text(vendor.category)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
        .navigationTitle("Sprzedawcy")
        .searchable(
            text: $viewModel.searchText,
            prompt: "Szukaj sprzedawcy lub kategorii"
        )
    }
}

#Preview {
    VendorsListView()
}
