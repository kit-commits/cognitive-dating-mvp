//
//  Match_Page.swift
//  Mensa Inspired Dating App MVP
//
//  Created by Kaitlin Taylor on 1/11/26.
//

import SwiftUI

struct Match_Page: View {
    var body: some View {
        VStack(spacing: 40) {

            Text("Match Screen")
                .font(.system(size: 48, weight: .semibold, design: .default))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)

            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.purple)

            Button(action: {
                // Navigate to next page
            }) {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 48)
                    .background(
                        Color(red: 1/255, green: 2/255, blue: 28/255)
                    )
                    .cornerRadius(10)
            }
            
            Button(action: {
                // Navigate to next page
            }) {
                Text("List View")
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
    Match_Page()
}
