//
//  ProfilePage.swift
//  Mensa Inspired Dating App MVP
//
//  Created by Kaitlin Taylor on 1/10/26.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Your Matches")
                .font(.system(size: 36, weight: .semibold))
                .foregroundColor(.gray)
                .padding(.top, 20)
            
            // MARK: Profile Card
            VStack(spacing: 16) {
                // Profile Image
                Image(systemName: "person.fill") // replace with your asset
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 300)
                    .foregroundColor(.purple)
                    .clipped()
                    .cornerRadius(20)
                    .shadow(radius: 5)
                
                // Name + Age
                HStack {
                    Text("Alex, 29")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal, 16)
                
                // Short bio
                Text("Loves coffee, logic puzzles, and long walks through museum exhibits. Looking for someone curious and witty!")
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 16)
                
            }
            .frame(width: 340, height: 640)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
            
            // MARK: Action Buttons
            HStack(spacing: 40) {
                Button(action: {
                    print("Pass tapped")
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.red)
                }
                
                Button(action: {
                    print("Like tapped")
                }) {
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.purple)
                }
            }
            .padding(.top, 20)
            
            Spacer()
        }
        .background(Color(white: 0.95)) // light gray background
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ProfilePage()
}
