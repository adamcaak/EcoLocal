//
//  Vendor.swift
//  EcoLocal
//
//  Created by Łukasz Adamczak on 03/05/2026.
//

import Foundation

struct Vendor: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let description: String
}
