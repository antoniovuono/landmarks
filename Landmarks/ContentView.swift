//
//  ContentView.swift
//  Landmarks
//
//  Created by user on 29/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle rocks")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                       
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About turtlerock")
                    .font(.title2)
                Text("Description go here")
            }
            .padding()
            
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
