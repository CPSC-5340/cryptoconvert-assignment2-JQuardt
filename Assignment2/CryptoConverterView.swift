//
//  CrytoConverterView.swift
//  Assignment2
//
//  Created by Jenna Marquardt on 3/21/24.
//

import SwiftUI
import Combine

struct CryptoConverterView: View {
    @ObservedObject var viewModel = CryptoConverterViewModel()
    @State var number: String = "1"
    @FocusState var isFocused : Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Bitcoin: ")
                Spacer()
                TextField("Amount", text: $number)
                    .keyboardType(.numberPad)
                    .onReceive(Just(number)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.number = filtered
                        }
                    }
                    .focused($isFocused)
                    .onSubmit {
                        isFocused = false
                    }
                    .textFieldStyle(.roundedBorder)
            }.padding()
            List {
                ForEach(viewModel.list) { item in
                    HStack {
                        Text(viewModel.getCName(card: item))
                        Spacer()
                        Text(viewModel.calculate(card: item, num: Double(number) ?? 0))
                    }
                }
            }.onAppear{
                viewModel.fetchList()
            }
        }.onTapGesture {
            isFocused = false
        }
    }
}

#Preview {
    CryptoConverterView()
}
