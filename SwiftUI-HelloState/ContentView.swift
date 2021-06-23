//
//  ContentView.swift
//  SwiftUI-HelloState
//
//  Created by Arpit Dixit on 23/06/21.
//

import SwiftUI

struct ContentView: View {
    private let firstname = "Arpit"
    private let lastname = "Dixit"
    @State private var name = "Arpit"
    var body: some View {
        VStack {
            Text(name)
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()
            Button(action: {
                self.name = name == firstname ? lastname : firstname
            }) {
                Text("Click Me")
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.black)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
