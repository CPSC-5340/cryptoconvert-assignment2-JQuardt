//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Conversion App")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            List {
                NavigationLink("World Currency Exchange", destination: CurrencyConverterView())
                NavigationLink("Crypto Exchange", destination: CryptoConverterView())
            }
        }.navigationTitle("Conversion App")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
