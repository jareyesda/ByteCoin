//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "C8CB8728-1D64-4335-8535-2568F19A5927"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getRate(currency: String) -> Double {
        
        var price = 0.000
        
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                price = parse(json: data)
            }
        }
        
        return price
        
    }
    
    func parse(json: Data) -> Double {
        
        let decoder = JSONDecoder()
        
        var price = 0.000
        
        if let jsonData = try? decoder.decode(CoinData.self, from: json) {
            
            price = jsonData.rate
            
        }
        
        return price
        
    }

    
}
