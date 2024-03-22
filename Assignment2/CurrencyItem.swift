//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by Jenna Marquardt on 3/21/24.
//

import SwiftUI

struct CurrencyItem: View {
    var card : ConvertModel<CurrencyItemModel>
    
    var body: some View {
            if card.isFront {
                FrontCurrencyItem(card: card.cardContent)
            } else {
                BackCurrencyItem(card: card.cardContent)
            }
        }
}
struct FrontCurrencyItem: View {
    var card : CurrencyItemModel
    var body: some View {
        VStack {
            HStack(
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                    Text(card.countryFlag)
                }).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack(
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                    Text(card.currencyCode)
                })
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.gray)
    }
}
struct BackCurrencyItem: View {
    var card : CurrencyItemModel
    var body: some View {
        VStack {
            HStack(
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                    Text(card.currencyName)
                })
            HStack(
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                    Text(String(card.multiplier))
                })
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.orange)
    }
}

#Preview {
    CurrencyItem(card: ConvertModel(cardContent: CurrencyItemModel(currencyName: "", currencyCode: "", countryFlag: "", multiplier: 1)))
}
