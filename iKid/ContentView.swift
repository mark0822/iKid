//
//  ContentView.swift
//  iKid
//
//  Created by Mark on 4/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        }
        TabView {
            JokeView(jokeTypeSelected: "Good")
                .tabItem {
                    Label("Good", systemImage: "")
                }
            JokeView(jokeTypeSelected: "Pun")
                .tabItem {
                    Label("Pun", systemImage: "")
                }
            JokeView(jokeTypeSelected: "Dad")
                .tabItem {
                    Label("Dad", systemImage: "").font(.title3)
                }
        }
    }
}

#Preview {
    ContentView()
}
