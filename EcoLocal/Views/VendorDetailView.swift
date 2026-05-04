//
//  VendorDetailView.swift
//  EcoLocal
//
//  Created by Łukasz Adamczak on 04/05/2026.
//

import SwiftUI

struct VendorDetailView: View {
    let vendor: Vendor
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(systemName: "leaf.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .foregroundStyle(.green)
                    .padding(.top)
                
                Text(vendor.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text(vendor.category)
                    .font(.headline)
                    .padding(.horizontal, 16)
                    .padding(.vertical,8)
                    .background(.green.opacity(0.15))
                    .clipShape(.capsule)
                
                Divider()
                
                Text(vendor.description)
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Szczegóły")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    VendorDetailView(vendor: Vendor(name: "Eko Stragran", category: "Warzywa", description: "Najlepsze warzywa w mieście!"))
}
