//
//  CurrencyConverterView.swift
//  Assignment2
//
//  Created by Jenna Marquardt on 3/21/24.
//

import SwiftUI

struct CurrencyConverterView: View {
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    
    var body: some View {
        VStack {
            Text("1 USD Exchange Rate")
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], content: {
                    ForEach(viewModel.listOfCards) { card in
                        CurrencyItem(card: card)
                            .onTapGesture {
                                viewModel.flip(card: card)
                            }
                    }
                })
            }
            .onAppear {
                viewModel.fetchCards()
            }
        }
    }
}

#Preview {
    CurrencyConverterView()
}
