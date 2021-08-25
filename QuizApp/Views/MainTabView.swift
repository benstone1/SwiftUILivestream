//
//  MainTabView.swift
//  QuizApp
//
//  Created by Ben Stone on 8/11/21.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            WelcomeView()
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
