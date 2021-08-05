//
//  BottomText.swift
//  QuizApp
//
//  Created by Ben Stone on 8/5/21.
//

import SwiftUI

struct BottomText: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomText_Previews: PreviewProvider {
    static var previews: some View {
        BottomText(str: "Test")
    }
}
