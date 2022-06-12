//
//  ContentView.swift
//  Landmarks
//
//  Created by Antonio Vuono on 11/06/22.
//

import SwiftUI


//First structure conform a view protocol...
struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300) //When we specify only the height de width adjust form all screen
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
                    .fontWeight(.bold)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California-CA")
                        .fontWeight(.bold)
               
                }
                .font(.subheadline)
   
                
                Divider()
                
                HStack {
                    Text("About Turtle Rock")
                        .font(.title2)
                        
                    Spacer()
                    
                    Text("Experiences")
                        .font(.footnote)
                        
                }
                
                Text("Descriptive text goes here")
                    
               
            }
            .padding()
            Spacer()
        }
    }

}

//Second strcuture conform a preview tool for that view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
