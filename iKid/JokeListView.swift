//
//  test.swift
//  iKid
//
//  Created by Mark on 4/29/24.
//

import Foundation
import SwiftUI

struct JokeView: View {
    @State var jokeTypeSelected: String
    @State private var goodJokes = [
    Joke(jokeTitle: "Good Joke 1", jokeText: "Why do cows wear bells?", punchline: "Because their horns don’t work.", jokeType: "good"),
    Joke(jokeTitle: "Good Joke 2", jokeText: "Why did the bicycle fall over?", punchline: "Because it was two tired.", jokeType: "good"),
    Joke(jokeTitle: "Good Joke 3", jokeText: "What do lawyers wear to court?", punchline: "Lawsuits.", jokeType: "good"),
    Joke(jokeTitle: "Good Joke 4", jokeText: "What lights up a soccer stadium?", punchline: "A soccer match.", jokeType: "good"),
    Joke(jokeTitle: "Good Joke 5", jokeText: "Why shouldn't you use a broken pencil?", punchline: "Because it's pointless.", jokeType: "good")
    ]
    @State private var dadJokes = [
    Joke(jokeTitle: "Dad Joke 1", jokeText: "I once submitted 10 puns to a joke competition. I really thought with that many, one was sure to be a winner", punchline: "Sadly, no pun in ten did", jokeType: "dad"),
    Joke(jokeTitle: "Dad Joke 2", jokeText: "Why did the old man fall down the well?", punchline: "He couldn’t see that well.", jokeType: "dad"),
    Joke(jokeTitle: "Dad Joke 3", jokeText: "How many storm troopers does it take to change a lightbulb?", punchline: "None, because they are all on the dark side.", jokeType: "dad"),
    Joke(jokeTitle: "Dad Joke 4", jokeText: "What do you call the security guards for Samsung?", punchline: "Guardians of the galaxy.", jokeType: "dad")
    ]
    @State private var punJokes = [
    Joke(jokeTitle: "Pun Joke 1", jokeText: "How can you spot a nosy pepper?", punchline: "It gets Jalapeño business!", jokeType: "pun"),
    Joke(jokeTitle: "Pun Joke 2", jokeText: "What do you call an alligator in a vest?", punchline: "An investigator.", jokeType: "pun"),
    Joke(jokeTitle: "Pun Joke 3", jokeText: "What did one eye say to the other?", punchline: "Just between you and me, something smells.", jokeType: "pun"),
    Joke(jokeTitle: "Pun Joke 4", jokeText: "Why did the can crusher quit her job?", punchline: "It was soda-pressing.", jokeType: "pun")
    ]
    
    var body: some View {
        var displayedJokes: [Joke]{
            switch jokeTypeSelected{
            case "Good":
                return goodJokes
            case "Dad":
                return dadJokes
            case "Pun":
                return punJokes
            default:
                print("No Selection Made")
                return []
            }
        }
        JokeList(jokes: displayedJokes)
    }
}

struct Joke: Hashable{
    let jokeTitle: String
    let jokeText: String
    let punchline: String
    let jokeType: String
    let id = UUID()
}

struct JokeList: View {
    @State var jokes: [Joke]
    var body: some View {
        NavigationStack {
            List(jokes, id: \.self) { joke in
                NavigationLink{
                    jokeDetailView(joke: joke)
                } label: {
                    Text(joke.jokeTitle)
                }
            }
        }
    }
}
