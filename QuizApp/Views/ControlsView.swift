//
//  SettingsView.swift
//  QuizApp
//
//  Created by Ben Stone on 8/5/21.
//

import SwiftUI

struct ControlsView: View {
    @State var shapeType = ShapeType.circle
    @State var shapeCount = 2
    @State var name = "Test Name"
    var body: some View {
        VStack {
            Text("Controls")
                .font(.largeTitle)
            Spacer()
            Text("Welcome \(name)!")
            HStack {
                ForEach(0..<shapeCount, id: \.self) { _ in
                    switch shapeType {
                    case .circle: Circle()
                    case .capsule: Capsule()
                    case .rectangle: Rectangle()
                    }
                }
                .padding()
            }
            Form {
                Picker("Shape Picker", selection: $shapeType) {
                    ForEach(ShapeType.allCases) { shape in
                        Text(shape.rawValue.capitalized).tag(shape)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                TextField("Enter text", text: $name)
                Stepper("Number of Shapes: \(shapeCount)", value: $shapeCount, in: 1...8)
            }
        }
    }
    enum ShapeType: String, CaseIterable, Identifiable {
        case circle
        case rectangle
        case capsule
        
        var id: String { self.rawValue }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
