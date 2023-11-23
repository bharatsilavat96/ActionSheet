//
//  Teleport.swift
//  NetworkProject
//
//  Created by Uday Patil on 30/12/22.
//

import Foundation

struct Teleport : Codable {
    var links : Link?
    var categories : [Category]?
    var summary : String?
    var teleport_city_score : Float?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.categories, forKey: .categories)
        try container.encodeIfPresent(self.summary, forKey: .summary)
        try container.encodeIfPresent(self.teleport_city_score, forKey: .teleport_city_score)
    }
    enum CodingKeys: CodingKey {
        case links
        case categories
        case summary
        case teleport_city_score
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent(Link.self, forKey: .links)
        self.categories = try container.decodeIfPresent([Category].self, forKey: .categories)
        self.summary = try container.decodeIfPresent(String.self, forKey: .summary)
        self.teleport_city_score = try container.decodeIfPresent(Float.self, forKey: .teleport_city_score)
    }
}

struct Link : Codable {
    var curies : [Curies]?
    var myself : Self1?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.curies, forKey: .curies)
        try container.encodeIfPresent(self.myself, forKey: .myself)
    }
    enum CodingKeys: CodingKey {
        case curies
        case myself
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.curies = try container.decodeIfPresent([Curies].self, forKey: .curies)
        self.myself = try container.decodeIfPresent(Self1.self, forKey: .myself)
    }
}

struct Self1 : Codable {
    var href : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.href, forKey: .href)
    }
    enum CodingKeys: CodingKey {
        case href
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.href = try container.decodeIfPresent(String.self, forKey: .href)
    }
}

struct Curies : Codable {
    var href : String?
    var name : String?
    var templated : Bool?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.href, forKey: .href)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.templated, forKey: .templated)
    }
    enum CodingKeys: CodingKey {
        case href
        case name
        case templated
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.href = try container.decodeIfPresent(String.self, forKey: .href)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.templated = try container.decodeIfPresent(Bool.self, forKey: .templated)
    }
}

struct Category : Codable {
    var color : String?
    var name : String?
    var score_out_of_10 : Float?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.color, forKey: .color)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.score_out_of_10, forKey: .score_out_of_10)
    }
    enum CodingKeys: CodingKey {
        case color
        case name
        case score_out_of_10
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.color = try container.decodeIfPresent(String.self, forKey: .color)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.score_out_of_10 = try container.decodeIfPresent(Float.self, forKey: .score_out_of_10)
    }
}


