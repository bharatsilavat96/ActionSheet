//
//  PaprikaCoin.swift
//  NetworkProject
//
//  Created by Uday Patil on 30/12/22.
//

import Foundation

struct CoinPaprika : Codable {
    
    var id : String?
    var name : String?
    var symbol : String?
    var rank : Int?
    var isNew : Bool?
    var isActive : Bool?
    var type : String?
    var logo : String?
    var tags : [Tags]?
    var team : [Team]?
    var description : String?
    var message : String?
    var openSource : Bool?
    var startedAt : String?
    var developmentStatus : String?
    var hardwareWallet : Bool?
    var proofType : String?
    var orgStructure : String?
    var hashAlgorithm : String?
    var links : Links?
    var linksExtended : [LinksExtended]?
    var whitepaper : Whitepaper?
    var firstDataAt : String?
    var lastDataAt : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.symbol, forKey: .symbol)
        try container.encodeIfPresent(self.rank, forKey: .rank)
        try container.encodeIfPresent(self.isNew, forKey: .isNew)
        try container.encodeIfPresent(self.isActive, forKey: .isActive)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.logo, forKey: .logo)
        try container.encodeIfPresent(self.tags, forKey: .tags)
        try container.encodeIfPresent(self.team, forKey: .team)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.message, forKey: .message)
        try container.encodeIfPresent(self.openSource, forKey: .openSource)
        try container.encodeIfPresent(self.startedAt, forKey: .startedAt)
        try container.encodeIfPresent(self.developmentStatus, forKey: .developmentStatus)
        try container.encodeIfPresent(self.hardwareWallet, forKey: .hardwareWallet)
        try container.encodeIfPresent(self.proofType, forKey: .proofType)
        try container.encodeIfPresent(self.orgStructure, forKey: .orgStructure)
        try container.encodeIfPresent(self.hashAlgorithm, forKey: .hashAlgorithm)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.linksExtended, forKey: .linksExtended)
        try container.encodeIfPresent(self.whitepaper, forKey: .whitepaper)
        try container.encodeIfPresent(self.firstDataAt, forKey: .firstDataAt)
        try container.encodeIfPresent(self.lastDataAt, forKey: .lastDataAt)
    }
    enum CodingKeys: CodingKey {
        case id
        case name
        case symbol
        case rank
        case isNew
        case isActive
        case type
        case logo
        case tags
        case team
        case description
        case message
        case openSource
        case startedAt
        case developmentStatus
        case hardwareWallet
        case proofType
        case orgStructure
        case hashAlgorithm
        case links
        case linksExtended
        case whitepaper
        case firstDataAt
        case lastDataAt
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.symbol = try container.decodeIfPresent(String.self, forKey: .symbol)
        self.rank = try container.decodeIfPresent(Int.self, forKey: .rank)
        self.isNew = try container.decodeIfPresent(Bool.self, forKey: .isNew)
        self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.logo = try container.decodeIfPresent(String.self, forKey: .logo)
        self.tags = try container.decodeIfPresent([Tags].self, forKey: .tags)
        self.team = try container.decodeIfPresent([Team].self, forKey: .team)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.openSource = try container.decodeIfPresent(Bool.self, forKey: .openSource)
        self.startedAt = try container.decodeIfPresent(String.self, forKey: .startedAt)
        self.developmentStatus = try container.decodeIfPresent(String.self, forKey: .developmentStatus)
        self.hardwareWallet = try container.decodeIfPresent(Bool.self, forKey: .hardwareWallet)
        self.proofType = try container.decodeIfPresent(String.self, forKey: .proofType)
        self.orgStructure = try container.decodeIfPresent(String.self, forKey: .orgStructure)
        self.hashAlgorithm = try container.decodeIfPresent(String.self, forKey: .hashAlgorithm)
        self.links = try container.decodeIfPresent(Links.self, forKey: .links)
        self.linksExtended = try container.decodeIfPresent([LinksExtended].self, forKey: .linksExtended)
        self.whitepaper = try container.decodeIfPresent(Whitepaper.self, forKey: .whitepaper)
        self.firstDataAt = try container.decodeIfPresent(String.self, forKey: .firstDataAt)
        self.lastDataAt = try container.decodeIfPresent(String.self, forKey: .lastDataAt)
    }
    
}

struct Tags : Codable  {
    var id : String?
    var name : String?
    var coin_Counter : Int?
    var ico_Counter : Int?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.coin_Counter, forKey: .coin_Counter)
        try container.encodeIfPresent(self.ico_Counter, forKey: .ico_Counter)
    }
    enum CodingKeys: CodingKey {
        case id
        case name
        case coin_Counter
        case ico_Counter
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.coin_Counter = try container.decodeIfPresent(Int.self, forKey: .coin_Counter)
        self.ico_Counter = try container.decodeIfPresent(Int.self, forKey: .ico_Counter)
    }
}

struct Team : Codable {
    var id : String?
    var name : String?
    var position : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.position, forKey: .position)
    }
    enum CodingKeys: CodingKey {
        case id
        case name
        case position
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.position = try container.decodeIfPresent(String.self, forKey: .position)
    }
}
struct Links : Codable {
    var explorer : [String]?
    var facebook : [String]?
    var reddit : [String]?
    var source_code : [String]?
    var website : [String]?
    var youtube : [String]?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.explorer, forKey: .explorer)
        try container.encodeIfPresent(self.facebook, forKey: .facebook)
        try container.encodeIfPresent(self.reddit, forKey: .reddit)
        try container.encodeIfPresent(self.source_code, forKey: .source_code)
        try container.encodeIfPresent(self.website, forKey: .website)
        try container.encodeIfPresent(self.youtube, forKey: .youtube)
    }
    enum CodingKeys: String, CodingKey {
        case explorer
        case facebook
        case reddit
        case source_code
        case website
        case youtube
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.explorer = try container.decodeIfPresent([String].self, forKey: .explorer)
        self.facebook = try container.decodeIfPresent([String].self, forKey: .facebook)
        self.reddit = try container.decodeIfPresent([String].self, forKey: .reddit)
        self.source_code = try container.decodeIfPresent([String].self, forKey: .source_code)
        self.website = try container.decodeIfPresent([String].self, forKey: .website)
        self.youtube = try container.decodeIfPresent([String].self, forKey: .youtube)
    }
}
struct LinksExtended : Codable {
    var url : String?
    var type : String?
    var stats : [Stats]?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.url, forKey: .url)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.stats, forKey: .stats)
    }
    enum CodingKeys: CodingKey {
        case url
        case type
        case stats
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.stats = try container.decodeIfPresent([Stats].self, forKey: .stats)
    }

}

struct Stats : Codable {
    var subscribers : Int?
    var contributors : Int?
    var followers : Int?
    var stars : Int?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.subscribers, forKey: .subscribers)
        try container.encodeIfPresent(self.contributors, forKey: .contributors)
        try container.encodeIfPresent(self.followers, forKey: .followers)
        try container.encodeIfPresent(self.stars, forKey: .stars)
    }
    enum CodingKeys: CodingKey {
        case subscribers
        case contributors
        case followers
        case stars
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.subscribers = try container.decodeIfPresent(Int.self, forKey: .subscribers)
        self.contributors = try container.decodeIfPresent(Int.self, forKey: .contributors)
        self.followers = try container.decodeIfPresent(Int.self, forKey: .followers)
        self.stars = try container.decodeIfPresent(Int.self, forKey: .stars)
    }
}

struct Whitepaper : Codable {
    var link : String?
    var thumbnail : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.link, forKey: .link)
        try container.encodeIfPresent(self.thumbnail, forKey: .thumbnail)
    }
    enum CodingKeys: CodingKey {
        case link
        case thumbnail
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.link = try container.decodeIfPresent(String.self, forKey: .link)
        self.thumbnail = try container.decodeIfPresent(String.self, forKey: .thumbnail)
    }
}
