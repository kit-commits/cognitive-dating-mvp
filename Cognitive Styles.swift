//
//  Cognitive Styles.swift
//  Mensa Inspired Dating App MVP
//
//  Created by Kaitlin Taylor on 1/11/26.
//

import SwiftUI

struct CognitiveStyles: View {
    
    let cardTexts = [
        "What's A Paradox That Fascinates You?",
        "What are problems with multiple valid solutions?",
        "Which first-principles approach have you applied outside work?",
        "Lateral thinking puzzles or logical ones?",
        "The best mental models for thinking.",
        "Which field do you wish to master?"
    ]
    
    var body: some View {
        VStack(spacing: 40) {

            Text("Cognition")
                .font(.system(size: 48, weight: .semibold, design: .default))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)

            // Vertical cards
            VStack(spacing: 28) {
                ForEach(0..<cardTexts.count, id: \.self) { index in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 201/255, green: 179/255, blue: 223/255)) // #C9B3DF
                            .frame(width: 340, height: 100)
                            .shadow(radius: 3)
                        
                        Text(cardTexts[index])
                            .font(.headline)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                    }
                }
            }

        }
        .padding(.top, 100)
    }
}

#Preview {
    CognitiveStyles()
}
