//
//  GameViewModel.swift
//  QuizApp
//
//  Created by Ben Stone on 8/18/21.
//

import SwiftUI

class GameViewModel: ObservableObject {
    @Published var game = Game()
    
    var questionText: String {
        game.currentQuestion.questionText
    }
    
    var answerIndices: Range<Int> {
        game.currentQuestion.possibleAnswers.indices
    }
    
    var correctAnswerIndex: Int {
        game.currentQuestion.correctAnswerIndex
    }
    
    var progressText: String {
        "Question \(game.currentQuestionIndex + 1) / \(game.questionCount)"
    }
    
    var selectionWasMade: Bool {
        game.selections[game.currentQuestion] != nil
    }
    
    var selectionCount: (Int, Int) {
        game.selectionCount
    }
    
    var gameIsOver: Bool {
        game.gameIsOver
    }
    
    var gameStartTime: Date {
        game.startTime
    }
    
    func answerText(for index: Int) -> String {
        game.currentQuestion.possibleAnswers[index]
    }
    
    func advanceGameState() {
        game.advanceGameState()
    }
    
    func makeSelectionForCurrentQuestion(at index: Int) {
        game.makeSelection(at: index)
    }
    
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let selectedIndex = game.selections[game.currentQuestion], selectedIndex == buttonIndex else { return .clear }
        if selectedIndex == correctAnswerIndex {
            return .green
        } else {
            return .red
        }
    }
}
