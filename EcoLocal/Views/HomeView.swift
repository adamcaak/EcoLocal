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
            VStack(spacing: 30) {
                
                Spacer()
                
                Image(systemName: "leaf.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .foregroundStyle(.green)
                
                Text("EcoLocal 🌱")
                    .font(.largeTitle)
                    .bold()
                
                Text("Znajdź lokalnych sprzedawców zdrowej żywności!")
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundStyle(.secondary)
                
                NavigationLink {
                    Text("Lista sprzedawców")
                } label: {
                    Text("Przeglądaj sprzedawców")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.green)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
