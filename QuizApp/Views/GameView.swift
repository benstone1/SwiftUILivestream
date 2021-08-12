//
//  ContentView.swift
//  QuizApp
//
//  Created by Ben Stone on 8/4/21.
//

import SwiftUI

struct GameView: View {
    let question: Question

    @State var guessedIndex: Int? = nil
    
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
                Text(question.questionText)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Spacer()
                HStack {
                    ForEach(question.possibleAnswers.indices) { index in
                        AnswerButton(text: question.possibleAnswers[index]) {
                            guessedIndex = index
                        }
                        .background(colorForButton(at: index))
                        .disabled(guessedIndex != nil)
                    }
                }
                if guessedIndex != nil {
                    BottomText(str: "Next")
                }
            }.padding(.bottom)
        }
    }
    
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let guessedIndex = guessedIndex, guessedIndex == buttonIndex else { return .clear }
        if guessedIndex == question.correctAnswerIndex {
            return .green
        } else {
            return .red
        }
    }
}

struct AnswerButton: View {
    let text: String
    let onClick: () -> Void
    var body: some View {
        Button(action: {
            onClick()
        }) {
            Text(text)
        }
        .padding()
        .border(Color.blue, width: 4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(question: Question.allQuestions[1])
    }
}
