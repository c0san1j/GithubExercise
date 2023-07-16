//
//  ContentView.swift
//  GithubExercise
//
//  Created by Joel Santiago on 7/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfCircle = 5
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack {
                
                VStack {
                    Image(systemName: "\(numberOfCircle).circle")
                        .resizable()
                        .scaledToFit()
                    Text("Version \(numberOfCircle).0")
                        .font(.largeTitle)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.black.opacity(0.2))
                        .frame(width: 350, height: 100)
                        .overlay(
                            HStack {
                                Spacer()
                                
                                Button {
                                    if numberOfCircle < 50 {
                                        numberOfCircle += 1
                                    }
                                } label: {
                                    Text("Upgrade Version")
                                }
                                .frame(width: 100)
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                                .background(.blue)
                                .cornerRadius(15)
                                
                                Spacer()
                                
                                Divider()
                                    .background(.black.opacity(0.75))
                                    .padding()
                                
                                Spacer()
                                
                                Button {
                                    if numberOfCircle > 0 {
                                        numberOfCircle -= 1
                                    }
                                } label: {
                                    Text("Downgrade Version")
                                }
                                .frame(width: 100)
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                                .background(.blue)
                                .cornerRadius(15)
                                
                                Spacer()
                            }
                        )
                }
                .foregroundColor(.white)
                .padding()
                
                
            }
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.black.opacity(0.2))
            )
            .padding(.horizontal, 8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
