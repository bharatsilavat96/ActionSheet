//
//  BitcoinModel.swift
//  NetworkProject
//
//  Created by Uday Patil on 04/01/23.
//

import Foundation

struct Currency : Codable {
    var id : String?
    var name : String?
    var symbol : String?
    var rank : Int?
    var circulatingSupply : Int?
    var totalSupply : Int?
    var maxSupply : Int?
    var betaValue : Float?
    var firstDataAt : String?
    var lastUpdated : String?
    var quotes : Quote?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.symbol, forKey: .symbol)
        try container.encodeIfPresent(self.rank, forKey: .rank)
        
        try container.encodeIfPresent(self.circulatingSupply, forKey: .circulatingSupply)
        
        try container.encodeIfPresent(self.totalSupply, forKey: .totalSupply)
        
        try container.encodeIfPresent(self.maxSupply, forKey: .maxSupply)
        
        try container.encodeIfPresent(self.betaValue, forKey: .betaValue)
        
        try container.encodeIfPresent(self.firstDataAt, forKey: .firstDataAt)
        
        try container.encodeIfPresent(self.lastUpdated, forKey: .lastUpdated)
        
        try container.encodeIfPresent(self.quotes, forKey: .quotes)
        
    }
    
    enum CodingKeys: String, CodingKey {
        
        case id
        
        case name
        
        case symbol
        
        case rank
        
        case circulatingSupply = "circulating_supply"
        
        case totalSupply = "total_supply"
        
        case maxSupply = "max_supply"
        
        case betaValue = "beta_value"
        
        case firstDataAt = "first_data_at"
        
        case lastUpdated = "last_updated"
        
        case quotes
        
    }
    
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        
        self.symbol = try container.decodeIfPresent(String.self, forKey: .symbol)
        
        self.rank = try container.decodeIfPresent(Int.self, forKey: .rank)
        
        self.circulatingSupply = try container.decodeIfPresent(Int.self, forKey: .circulatingSupply)
        
        self.totalSupply = try container.decodeIfPresent(Int.self, forKey: .totalSupply)
        
        self.maxSupply = try container.decodeIfPresent(Int.self, forKey: .maxSupply)
        
        self.betaValue = try container.decodeIfPresent(Float.self, forKey: .betaValue)
        
        self.firstDataAt = try container.decodeIfPresent(String.self, forKey: .firstDataAt)
        
        self.lastUpdated = try container.decodeIfPresent(String.self, forKey: .lastUpdated)
        
        self.quotes = try container.decodeIfPresent(Quote.self, forKey: .quotes)
        
    }
    
}

struct Quote : Codable {
    
    var usd : USD?
    
    func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encodeIfPresent(self.usd, forKey: .usd)
        
    }
    
    enum CodingKeys: String, CodingKey {
        
        case usd =  "USD"
        
    }
    
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.usd = try container.decodeIfPresent(USD.self, forKey: .usd)
        
    }
    
}

struct USD : Codable {
    
    var price : Float?
    
    var volume24h : Float?
    
    var volume24hChange24h : Float?
    
    var marketCap : Int?
    
    var marketCapChange24h : Float?
    
    var percentChange15m : Float?
    
    var percentChange30m : Float?
    
    var percentChange1h : Float?
    
    var percentChange6h : Float?
    
    var percentChange12h : Float?
    
    var percentChange24h : Float?
    
    var percentChange7d : Float?
    
    var percentChange30d : Float?
    
    var percentChange1y : Float?
    
    var athPrice : Float?
    
    var athDate : String?
    
    var percentFromPriceAth : Float?
    
    func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encodeIfPresent(self.price, forKey: .price)
        
        try container.encodeIfPresent(self.volume24h, forKey: .volume24h)
        
        try container.encodeIfPresent(self.volume24hChange24h, forKey: .volume24hChange24h)
        
        try container.encodeIfPresent(self.marketCap, forKey: .marketCap)
        
        try container.encodeIfPresent(self.marketCapChange24h, forKey: .marketCapChange24h)
        
        try container.encodeIfPresent(self.percentChange15m, forKey: .percentChange15m)
        
        try container.encodeIfPresent(self.percentChange30m, forKey: .percentChange30m)
        
        try container.encodeIfPresent(self.percentChange1h, forKey: .percentChange1h)
        
        try container.encodeIfPresent(self.percentChange6h, forKey: .percentChange6h)
        
        try container.encodeIfPresent(self.percentChange12h, forKey: .percentChange12h)
        
        try container.encodeIfPresent(self.percentChange24h, forKey: .percentChange24h)
        
        try container.encodeIfPresent(self.percentChange7d, forKey: .percentChange7d)
        
        try container.encodeIfPresent(self.percentChange30d, forKey: .percentChange30d)
        
        try container.encodeIfPresent(self.percentChange1y, forKey: .percentChange1y)
        
        try container.encodeIfPresent(self.athPrice, forKey: .athPrice)
        
        try container.encodeIfPresent(self.athDate, forKey: .athDate)
        
        try container.encodeIfPresent(self.percentFromPriceAth, forKey: .percentFromPriceAth)
        
    }
    
    enum CodingKeys: String, CodingKey {
        
        case price
        
        case volume24h = "volume_24h"
        
        case volume24hChange24h = "volume_24h_change_24h"
        
        case marketCap = "market_cap"
        
        case marketCapChange24h = "market_cap_change_24h"
        
        case percentChange15m = "percent_change_15m"
        
        case percentChange30m = "percent_change_30m"
        
        case percentChange1h = "percent_change_1h"
        
        case percentChange6h = "percent_change_6h"
        
        case percentChange12h = "percent_change_12h"
        
        case percentChange24h = "percent_change_24h"
        
        case percentChange7d = "percent_change_7d"
        
        case percentChange30d = "percent_change_30d"
        
        case percentChange1y = "percent_change_1y"
        
        case athPrice = "ath_price"
        
        case athDate = "ath_date"
        
        case percentFromPriceAth = "percent_from_price_ath"
        
    }
    
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.price = try container.decodeIfPresent(Float.self, forKey: .price)
        
        self.volume24h = try container.decodeIfPresent(Float.self, forKey: .volume24h)
        
        self.volume24hChange24h = try container.decodeIfPresent(Float.self, forKey: .volume24hChange24h)
        
        self.marketCap = try container.decodeIfPresent(Int.self, forKey: .marketCap)
        
        self.marketCapChange24h = try container.decodeIfPresent(Float.self, forKey: .marketCapChange24h)
        
        self.percentChange15m = try container.decodeIfPresent(Float.self, forKey: .percentChange15m)
        
        self.percentChange30m = try container.decodeIfPresent(Float.self, forKey: .percentChange30m)
        
        self.percentChange1h = try container.decodeIfPresent(Float.self, forKey: .percentChange1h)
        
        self.percentChange6h = try container.decodeIfPresent(Float.self, forKey: .percentChange6h)
        
        self.percentChange12h = try container.decodeIfPresent(Float.self, forKey: .percentChange12h)
        
        self.percentChange24h = try container.decodeIfPresent(Float.self, forKey: .percentChange24h)
        
        self.percentChange7d = try container.decodeIfPresent(Float.self, forKey: .percentChange7d)
        
        self.percentChange30d = try container.decodeIfPresent(Float.self, forKey: .percentChange30d)
        
        self.percentChange1y = try container.decodeIfPresent(Float.self, forKey: .percentChange1y)
        
        self.athPrice = try container.decodeIfPresent(Float.self, forKey: .athPrice)
        
        self.athDate = try container.decodeIfPresent(String.self, forKey: .athDate)
        
        self.percentFromPriceAth = try container.decodeIfPresent(Float.self, forKey: .percentFromPriceAth)
        
    }
    
}
