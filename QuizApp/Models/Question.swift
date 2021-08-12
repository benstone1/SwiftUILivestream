//
//  Question.swift
//  QuizApp
//
//  Created by Ben Stone on 8/11/21.
//

import Foundation

struct Question {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static let allQuestions: [Question] = [
        Question(questionText: "What was the first computer bug?",
                 possibleAnswers: [
                    "Fly",
                    "Moth",
                    "Ant",
                    "Beetle",
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What language did iOS developers use before Swift?",
                 possibleAnswers: [
                    "Objective-C",
                    "Python",
                    "Typescript",
                    "Java"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Computers use the digits zero and one to store data.  What is this system called?",
                 possibleAnswers: [
                    "Binary",
                    "Ternary",
                    "Decimal",
                    "Fraction"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: [
                    "Steve Jobs",
                    "Linus Torvalds",
                    "Bill Gates",
                    "Tim Berners-Lee"
                 ],
                 correctAnswerIndex: 3),
    ]
}
