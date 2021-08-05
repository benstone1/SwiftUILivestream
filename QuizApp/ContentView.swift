//
//  ContentView.swift
//  QuizApp
//
//  Created by Ben Stone on 8/4/21.
//

import SwiftUI

struct ContentView: View {
    let question = "What was the first computer bug?"
    let possibleAnswers = [
        "Fly",
        "Moth",
        "Ant",
        "Beetle",
    ]
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.7, green: 0.7, blue: 0.5, opacity: 0.2)
                .ignoresSafeArea()
            VStack {
                Text("Quiz Time!")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                    .padding()
                Text("Question 1 / 4")
                    .padding()
                Spacer()
                Text(question)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Spacer()
                HStack {
                    ForEach(possibleAnswers.indices) { index in
                        AnswerButton(text: possibleAnswers[index])
                    }
                }
            }
        }
    }
}

struct AnswerButton: View {
    let text: String
    var body: some View {
        Button(action: {
            print("You selected \(text)")
        }) {
            Text(text)
        }
        .padding()
        .border(Color.blue, width: 4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
