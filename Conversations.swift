//
//  Conversations.swift
//  Mensa Inspired Dating App MVP
//
//  Created by Kaitlin Taylor on 1/11/26.
//

import SwiftUI

struct Conversations: View {
    
    let cardTexts = [
        "Cognitive Styles and Thinking Prompts",
        "Knowledge Domain Prompts",
        "Problem Solving/Challenge Prompts",
        "Intellectual Play & Creativity",
        "Philosophical Prompts",
        "Fun Prompts"
    ]
    
    var body: some View {
        VStack(spacing: 40) {

            Text("Conversations")
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
    Conversations()
}
