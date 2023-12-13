//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by deshollow on 13.12.2023.
//

import SwiftUI

struct ButtonView: View {
    
    let buttonStartText: String
    let buttonAction: () -> Void
    
    var body: some View {
        Button(action: buttonAction) {
            Text(buttonStartText)
                .font(.largeTitle)
                .tint(.white)
                .frame(width: 200, height: 70)
                .background(.blue)
                .border(Color.black, width: 8)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ButtonView(buttonStartText: "demo", buttonAction: {})
}

