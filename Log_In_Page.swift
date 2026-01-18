//
//  Log_In_Page.swift
//  Mensa Inspired Dating App MVP
//
//  Created by Kaitlin Taylor on 1/10/26.
//

import SwiftUI

struct Log_In_Page: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 30) { // Container for all elements
            
            // Title
            Text("Log In")
                .font(.system(size: 40, weight: .semibold, design: .default))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
            
            Image(systemName: "brain")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.purple)
            
            // Email Field
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .padding(.horizontal, 32)
            
            // Password Field
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 32)
            
            // Login Button
            Button(action: login) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color(red: 1/255, green: 2/255, blue: 28/255))
                    .cornerRadius(10)
                    .padding(.horizontal, 32)
            }
            
            Spacer()
        }
        .padding(.top, 100)
    }
    
    // Login function must be outside body
    func login() {
        if email.isEmpty || password.isEmpty {
            print("Please fill in all fields")
            return
        }
        print("Logging in with Email: \(email), Password: \(password)")
        // TODO: connect to backend / authentication
    }
}

#Preview {
    Log_In_Page()
}
