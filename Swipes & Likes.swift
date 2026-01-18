//
//  Swipes & Likes.swift
//  Mensa Inspired Dating App MVP
//
//  Created by Kaitlin Taylor on 1/11/26.
//

import SwiftUI

struct SwipesLikes: View {
    var body: some View {
        VStack(spacing: 40) {

            // Title
            Text("Swipes & Likes!")
                .font(.system(size: 48, weight: .semibold))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)

            // Icon
            Image(systemName: "hand.thumbsup.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.purple)

            // Continue Button
            Button(action: {
                print("Continue tapped")
                // Navigation logic can go here
            }) {
                Text("Filter Interests")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color(red: 1/255, green: 2/255, blue: 28/255))
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            
            // Continue Button
            Button(action: {
                print("Continue tapped")
                // Navigation logic can go here
            }) {
                Text("View List")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color(red: 1/255, green: 2/255, blue: 28/255))
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            
            // Continue Button
            Button(action: {
                print("Continue tapped")
                // Navigation logic can go here
            }) {
                Text("Conversation Prompts")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color(red: 1/255, green: 2/255, blue: 28/255))
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            
            // Continue Button
            Button(action: {
                print("Continue tapped")
                // Navigation logic can go here
            }) {
                Text("Badges")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color(red: 1/255, green: 2/255, blue: 28/255))
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            
            
        }
        .padding(.top, 100)
    }
}

#Preview {
    NavigationStack {
        SwipesLikes()
    }
}
