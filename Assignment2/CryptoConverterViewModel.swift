//
//  CryptoConverterViewModel.swift
//  Assignment2
//
//  Created by Jenna Marquardt on 3/21/24.
//

import Foundation

class CryptoConverterViewModel : ObservableObject {
    
    @Published private(set) var list = [ConvertModel<CryptoItemModel>]()
    
    func fetchList() {
        self.list = [
        ConvertModel(cardContent: CryptoItemModel(cryptoName: "US Dollar", multiplier: 23450)),
        ConvertModel(cardContent: CryptoItemModel(cryptoName: "Ethereum", multiplier: 14.3)),
        ConvertModel(cardContent: CryptoItemModel(cryptoName: "Tether", multiplier: 23450)),
        ConvertModel(cardContent: CryptoItemModel(cryptoName: "BNB", multiplier: 77.2)),
        ConvertModel(cardContent: CryptoItemModel(cryptoName: "USD Coin", multiplier: 23450)),
        ConvertModel(cardContent: CryptoItemModel(cryptoName: "XRP", multiplier: 62113)),
        ]
    }
    
    func getCName(card: ConvertModel<CryptoItemModel>) -> String {
        return card.cardContent.cryptoName
    }
    
    func calculate(card: ConvertModel<CryptoItemModel>, num: Double) -> String {
        return String(card.cardContent.multiplier * num)
    }
    
    func findIndex(card: ConvertModel<CryptoItemModel>) -> Int? {
        for index in 0..<list.count {
            if card.id == list[index].id {
                return index
            }
        }
        return nil
    }
    
}
