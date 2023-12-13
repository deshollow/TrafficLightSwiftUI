//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by deshollow on 12.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redLampOpacity = 0.5
    @State private var yellowLampOpacity = 0.5
    @State private var greenLampOpacity = 0.5
    @State private var redShadow: Color = .red
    @State private var yellowShadow: Color = .yellow
    @State private var greenShadow: Color = .green
    @State private var buttonText = "Start"
    
    private var buttonNextText = "Next"
    private var redColor: Color = .red
    private var yellowColor: Color = .yellow
    private var greenColor: Color = .green
    private var lampOn = 1.0
    private var lampOff = 0.5
    
    var body: some View {
        
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack {
                TrafficLampView(
                    color: redColor,
                    opacity: redLampOpacity,
                    shadow: redShadow
                )
                TrafficLampView(
                    color: yellowColor,
                    opacity: yellowLampOpacity,
                    shadow: yellowShadow
                )
                TrafficLampView(
                    color: greenColor,
                    opacity: greenLampOpacity,
                    shadow: greenShadow
                )
                Spacer()
                ButtonView(buttonStartText: buttonText,
                           buttonAction: changeLamp)
            }
            .padding(.top, 40)
            .padding(.bottom, 20)
        }
    }
}

extension ContentView {
    private func changeLamp() {
        buttonText = buttonNextText
        
        if redLampOpacity == lampOff && yellowLampOpacity == lampOff {
            redLampOpacity = lampOn
            greenLampOpacity = lampOff
            greenShadow = .clear
            redShadow = .red
            
        } else if redLampOpacity == lampOn {
            redLampOpacity = lampOff
            yellowLampOpacity = lampOn
            redShadow = .clear
            yellowShadow = .yellow
            
        } else {
            yellowLampOpacity = lampOff
            greenLampOpacity = lampOn
            yellowShadow = .clear
            greenShadow = .green
        }
    }
}

#Preview {
    ContentView()
}
