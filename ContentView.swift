//
//  ContentView.swift
//  Mensa Inspired Dating App MVP
//
//  Created by Kaitlin Taylor on 1/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {

            Text("Welcome To A High I.Q. Dating App!")
                .font(.system(size: 48, weight: .semibold, design: .default))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)

            Image(systemName: "brain")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.purple)

            Text("Welcome To Verified Nerd Land")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)

            Button(action: {
                // Navigate to login screen
            }) {
                Text("Get Started")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 48)
                    .background(
                        Color(red: 1/255, green: 2/255, blue: 28/255)
                    )
                    .cornerRadius(10)
            }
        }
        .padding(.top, 100)
       
    }
}

#Preview {
    ContentView()
}
