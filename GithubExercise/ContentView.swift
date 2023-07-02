//
//  ContentView.swift
//  GithubExercise
//
//  Created by Joel Santiago on 7/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "3.circle")
                .resizable()
                .scaledToFit()
            Text("Version 3.0")
                .font(.largeTitle)
            Rectangle()
        }
        .foregroundColor(.green)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 5)
                .fill(.ultraThinMaterial)
        )
        .padding(.horizontal, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
