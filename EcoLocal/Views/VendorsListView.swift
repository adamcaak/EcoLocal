//
//  VendorsListView.swift
//  EcoLocal
//
//  Created by Łukasz Adamczak on 03/05/2026.
//

import SwiftUI

struct VendorsListView: View {
    var body: some View {
        List(mockVendors) { vendor in
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
    }
}

#Preview {
    VendorsListView()
}
