//
//  ContentView.swift
//  UserDefaults_demo
//
//  Created by Vladimir Cezar on 2024.11.20.
//

import SwiftUI

struct UserDefaultsExampleView: View {
  @State private var username: String = ""
  @FocusState private var isFocused: Bool
  
  var body: some View {
    VStack(spacing: 20) {
      
        Text(username.isEmpty ? "Who are you anyway?" : "Hello, \(username)!")
      
      TextField("Enter your name", text: $username)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        .focused($isFocused)
        .onAppear {
          isFocused = true
        }
      
      HStack {
        Button("Save") {
          UserDefaults.standard.set(username, forKey: "username")
        }
        Button("Load") {
          if let savedName = UserDefaults.standard.string(forKey: "username") {
            username = savedName
          }
        }
        
        Button("Clear") {
          UserDefaults.standard.removeObject(forKey: "username")
          username = "" 
        }
      }
    }
    .padding()
  }
}

#Preview {
  UserDefaultsExampleView()
}
