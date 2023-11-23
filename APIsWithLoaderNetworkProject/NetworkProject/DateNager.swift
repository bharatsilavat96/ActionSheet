//
//  DateNager.swift
//  NetworkProject
//
//  Created by Uday Patil on 30/12/22.
//

import Foundation


struct PublicHoliday: Codable {
    
    var date : String?
    var localName : String?
    var name : String?
    var countryCode : String?
    var fixed : Bool?
    var global : Bool?
    var counties : [String]?
    var launchYear : Int?
    var type : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.localName, forKey: .localName)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.fixed, forKey: .fixed)
        try container.encodeIfPresent(self.global, forKey: .global)
        try container.encodeIfPresent(self.counties, forKey: .counties)
        try container.encodeIfPresent(self.launchYear, forKey: .launchYear)
        try container.encodeIfPresent(self.type, forKey: .type)
    }
    enum CodingKeys: String, CodingKey {
        case date 
        case localName
        case name
        case countryCode 
        case fixed = "fixed"
        case global = "global"
        case counties = "counties"
        case launchYear = "launchYear"
        case type = "type"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(String.self, forKey: .date)
        self.localName = try container.decodeIfPresent(String.self, forKey: .localName)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.fixed = try container.decodeIfPresent(Bool.self, forKey: .fixed)
        self.global = try container.decodeIfPresent(Bool.self, forKey: .global)
        self.counties = try container.decodeIfPresent([String].self, forKey: .counties)
        self.launchYear = try container.decodeIfPresent(Int.self, forKey: .launchYear)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
    }
}

