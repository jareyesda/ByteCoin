//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Juan Reyes on 4/6/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let rate: Float
    var rateString: String{
        String(format: "%.2f", rate)
    }
}
