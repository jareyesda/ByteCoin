// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let coinData = try? newJSONDecoder().decode(CoinData.self, from: jsonData)

import Foundation

// MARK: - CoinData
struct CoinData: Codable {
    let time, assetIDBase, assetIDQuote: String
    let rate: Double
    let srcSideBase: [SrcSideBase]

    enum CodingKeys: String, CodingKey {
        case time
        case assetIDBase = "asset_id_base"
        case assetIDQuote = "asset_id_quote"
        case rate
        case srcSideBase = "src_side_base"
    }
}

// MARK: - SrcSideBase
struct SrcSideBase: Codable {
    let time, asset: String
    let rate, volume: Double
}
