//
//  TrafficLampView.swift
//  TrafficLightSwiftUI
//
//  Created by deshollow on 12.12.2023.
//

import SwiftUI

struct TrafficLampView: View {
    
    let color: Color
    let opacity: CGFloat
    let shadow: Color
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(color)
                .frame(width: 150)
                .opacity(opacity)
                .shadow(color: shadow, radius: 60)
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 10)
                )
        }
    }
}

#Preview {
    ZStack {
        TrafficLampView(
            color: .green,
            opacity: 0.5,
            shadow: .black
        )
    }
}

