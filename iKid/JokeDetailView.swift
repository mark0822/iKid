//
//  JokeDetailView.swift
//  iKid
//
//  Created by Mark on 4/29/24.
//

import Foundation
import SwiftUI

struct jokeDetailView: View {
    let joke: Joke
    var body: some View {
        NavigationView{
            VStack{
                Text(joke.jokeText).padding(40)
                HStack{
                    Spacer()
                    NavigationLink(destination: punchlineView(joke: joke)){
                        Text("Next")
                    }.padding(.trailing, 40)
                }
            }
        }
    }
}


struct punchlineView: View{
    let joke: Joke
    var body: some View{
        Text(joke.punchline)
    }
}
