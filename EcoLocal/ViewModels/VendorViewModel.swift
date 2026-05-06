//
//  VendorViewModel.swift
//  EcoLocal
//
//  Created by Łukasz Adamczak on 04/05/2026.
//

import Foundation
import Combine

final class VendorViewModel: ObservableObject {
    @Published var vendors: [Vendor] = mockVendors
    @Published var searchText: String = ""
    
    var filteredVendors: [Vendor] {
        if searchText.isEmpty {
            return vendors
        } else {
            return vendors.filter { vendor in
                vendor.name.localizedCaseInsensitiveContains(searchText) ||
                vendor.category.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    func addVendor(_ vendor: Vendor) {
        vendors.append(vendor)
    }
}


