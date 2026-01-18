//
//  Navigation_Menu.swift
//  Mensa Inspired Dating App MVP
//
//  Created by Kaitlin Taylor on 1/10/26.
//

import SwiftUI

struct Navigation_Menu: View {
    
    init() {
        // Customize UITabBar appearance for background color
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor(red: 1/255, green: 2/255, blue: 28/255, alpha: 1)
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
    
    var body: some View {
        VStack {
            // Header content
            VStack(spacing: 20) {
                Text("Navigation Menu")
                    .font(.system(size: 48, weight: .semibold, design: .default))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                
                Image(systemName: "brain")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 240)
                    .foregroundColor(.purple)
            }
            
            .frame(maxHeight: .infinity) // center content
            .frame(maxWidth: .infinity)
            
            // Bottom Tab Bar
            TabView {
                // Matches Tab
                Color.clear
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Matches")
                    }
                
                // Profile Tab
                Color.clear
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                
                // Filter Tab
                Color.clear
                    .tabItem {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                        Text("Filter")
                    }
            }
            .accentColor(.white) // Selected tab icon/text color
            .frame(height: 80) // Optional: limit tab bar height
        }
       // .background(Color(red: 1/255, green: 2/255, blue: 28/255)) // App background
        .edgesIgnoringSafeArea(.bottom) // Extend background under tab bar
    }
}

#Preview {
    Navigation_Menu()
}
