//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("World Currency Exchange", destination: CurrencyConverterView())
                NavigationLink("Crypto Exchange", destination: CryptoConverterView())
            }
            .navigationTitle("Conversion App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
