//
//  Scan_Your_QRCode.swift
//  Mensa Inspired Dating App MVP
//
//  Created by Kaitlin Taylor on 1/10/26.
//

import SwiftUI

struct Scan_Your_QRCode: View {
    var body: some View {
        VStack(spacing: 32) {

            // Title
            Text("Scan Your QR Code")
                .font(.system(size: 40, weight: .semibold, design: .default))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            // Instruction text
            Text("Align the QR code within the frame below to verify your profile.")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)

            // Camera / Scan Placeholder
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray.opacity(0.4), lineWidth: 2)
                    .frame(width: 260, height: 260)

                Image(systemName: "qrcode.viewfinder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.purple)
            }

            // Helper text
            Text("Make sure the code is well lit and fully visible.")
                .font(.system(size: 14))
                .foregroundColor(.gray)

            // Primary action
            Button(action: {
                // Trigger scan / navigate
            }) {
                Text("Start Scan")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 48)
                    .background(
                        Color(red: 1/255, green: 2/255, blue: 28/255)
                    )
                    .cornerRadius(10)
            }

            // Secondary action
            Button(action: {
                // Skip or manual entry
            }) {
                Text("Enter Code Manually")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.gray)
            }
        }
        .padding(.top, 100)
        
    }
}

#Preview {
    Scan_Your_QRCode()
}
