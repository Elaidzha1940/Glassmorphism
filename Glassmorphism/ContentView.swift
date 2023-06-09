//  /*
//
//  Project: Glassmorphism
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.06.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.mint, Color.gray]), startPoint: .top, endPoint: .bottom)
            
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.purple.opacity(0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .offset(x: 150, y: -200)
                    .foregroundColor(.purple.opacity(0.4))
                    .blur(radius: 7)
                Circle()
                    .frame(width: 300, height: 300)
                    .offset(x: -100, y: -125)
                    .foregroundColor(.indigo.opacity(0.5))
                    .blur(radius: 7)
                Popup()
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Popup: View {
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.white.opacity(0.4)
                .frame(width: 300, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
                .blur(radius: 1)
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Glassmorphism")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.8))
                
                Text("Damn it!".uppercased())
                    .font(.caption)
                
                Text("Make someying nice and be kind!")
                    .font(.footnote)
            }
            .padding()
            .frame(width: 300, height: 400)
            .foregroundColor(Color.black.opacity(0.8))
        }
    }
}
