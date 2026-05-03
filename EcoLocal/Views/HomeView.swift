//
//  ContentView.swift
//  EcoLocal
//
//  Created by Łukasz Adamczak on 03/05/2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("EcoLocal 🌱")
                    .font(.largeTitle)
                    .bold()
                
                Text("Znajdź lokalnych sprzedawców zdrowej żywności!")
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    HomeView()
}
