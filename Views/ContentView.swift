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
        LandmarksList()
    }
}

//Second strcuture conform a preview tool for that view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
