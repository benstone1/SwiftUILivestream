//
//  MainTabView.swift
//  QuizApp
//
//  Created by Ben Stone on 8/5/21.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            GameView(question: Question.allQuestions[0])
                .tabItem { Label("Game", systemImage: "gamecontroller") }
            ControlsView()
                .tabItem { Label("Controls", systemImage: "gear") }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
