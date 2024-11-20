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
      TextField("Enter your name", text: $username)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        .focused($isFocused)
        .onAppear {
          isFocused = true
        }
      if !username.isEmpty {
        Text("Hello, \(username)!")
      }
    }
    .padding()
  }
}

#Preview {
  UserDefaultsExampleView()
}
