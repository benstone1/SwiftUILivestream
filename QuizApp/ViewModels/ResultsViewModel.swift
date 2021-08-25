//
//  ResultsViewModel.swift
//  QuizApp
//
//  Created by Ben Stone on 8/25/21.
//

import Foundation

struct ResultsViewModel {
    let selectionCount: (correct: Int, incorrect: Int)
    let gameStartTime: Date
    let gameEndTime: Date
    
    var finalPercentText: String {
        "\(score) %"
    }
    
    var letterGradeText: String {
        switch score {
        case 90...100: return "A"
        case 80..<90: return "B"
        case 70..<80: return "C"
        case 60..<70: return "D"
        case 0..<60: return "F"
        default: return "?"
        }
    }
    
    var correctSelectionText: String {
        "\(selectionCount.correct) ✅"
    }
    
    var incorrectSelectionText: String {
        "\(selectionCount.incorrect) ❌"
    }
    
    var totalGameTimeText: String {
        "\(Int(gameEndTime.timeIntervalSince(gameStartTime))) seconds"
    }
    
    private var score: Int {
        selectionCount.correct * 100 / (selectionCount.correct + selectionCount.incorrect)
    }
}
