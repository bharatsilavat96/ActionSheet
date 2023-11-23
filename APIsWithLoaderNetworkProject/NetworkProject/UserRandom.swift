//
//  UserRandom.swift
//  NetworkProject
//
//  Created by Uday Patil on 30/12/22.
//

import Foundation

struct RandomUser : Codable {
    var results : [Result]?
    var info : Info?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.results, forKey: .results)
        try container.encodeIfPresent(self.info, forKey: .info)
    }
    enum CodingKeys: String, CodingKey {
        case results
        case info
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.results = try container.decodeIfPresent([Result].self, forKey: .results)
        self.info = try container.decodeIfPresent(Info.self, forKey: .info)
    }
}

struct Result : Codable {
    var gender : String?
    var name : Name?
    var location : Location?
    var street : Street?
    var email : String?
    var login : Login?
    var dob : Dob?
    var registered : Registered?
    var phone : String?
    var cell : String?
    var id : Id?
    var picture : Picture?
    var nat : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.gender, forKey: .gender)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.street, forKey: .street)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.login, forKey: .login)
        try container.encodeIfPresent(self.dob, forKey: .dob)
        try container.encodeIfPresent(self.registered, forKey: .registered)
        try container.encodeIfPresent(self.phone, forKey: .phone)
        try container.encodeIfPresent(self.cell, forKey: .cell)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.picture, forKey: .picture)
        try container.encodeIfPresent(self.nat, forKey: .nat)
    }
    enum CodingKeys: String, CodingKey {
        case gender
        case name
        case location
        case street
        case email
        case login
        case dob
        case registered
        case phone
        case cell
        case id
        case picture
        case nat
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.gender = try container.decodeIfPresent(String.self, forKey: .gender)
        self.name = try container.decodeIfPresent(Name.self, forKey: .name)
        self.location = try container.decodeIfPresent(Location.self, forKey: .location)
        self.street = try container.decodeIfPresent(Street.self, forKey: .street)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.login = try container.decodeIfPresent(Login.self, forKey: .login)
        self.dob = try container.decodeIfPresent(Dob.self, forKey: .dob)
        self.registered = try container.decodeIfPresent(Registered.self, forKey: .registered)
        self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
        self.cell = try container.decodeIfPresent(String.self, forKey: .cell)
        self.id = try container.decodeIfPresent(Id.self, forKey: .id)
        self.picture = try container.decodeIfPresent(Picture.self, forKey: .picture)
        self.nat = try container.decodeIfPresent(String.self, forKey: .nat)
    }
}

struct Name : Codable {
    var title : String?
    var first : String?
    var last : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.first, forKey: .first)
        try container.encodeIfPresent(self.last, forKey: .last)
    }
    enum CodingKeys: String, CodingKey {
        case title
        case first
        case last
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.first = try container.decodeIfPresent(String.self, forKey: .first)
        self.last = try container.decodeIfPresent(String.self, forKey: .last)
    }

}

struct Location : Codable {
    var street : Street?
    var city : String?
    var state : String?
    var country : String?
    var postcode : Int?
    var coordinates : Coordinates?
    var timezone : Timezone?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.street, forKey: .street)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.state, forKey: .state)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.postcode, forKey: .postcode)
        try container.encodeIfPresent(self.coordinates, forKey: .coordinates)
        try container.encodeIfPresent(self.timezone, forKey: .timezone)
    }
    enum CodingKeys: CodingKey {
        case street
        case city
        case state
        case country
        case postcode
        case coordinates
        case timezone
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.street = try container.decodeIfPresent(Street.self, forKey: .street)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.state = try container.decodeIfPresent(String.self, forKey: .state)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.postcode = try container.decodeIfPresent(Int.self, forKey: .postcode)
        self.coordinates = try container.decodeIfPresent(Coordinates.self, forKey: .coordinates)
        self.timezone = try container.decodeIfPresent(Timezone.self, forKey: .timezone)
    }

    
}

struct Street : Codable {
    var number : Int?
    var name : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.number, forKey: .number)
        try container.encodeIfPresent(self.name, forKey: .name)
    }
    enum CodingKeys: CodingKey {
        case number
        case name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.number = try container.decodeIfPresent(Int.self, forKey: .number)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
    }
}

struct Coordinates : Codable {
    var latitude : String?
    var longitude : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
    }
    enum CodingKeys: CodingKey {
        case latitude
        case longitude
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.latitude = try container.decodeIfPresent(String.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(String.self, forKey: .longitude)
    }
    
}

struct Timezone : Codable {
    var offset : String?
    var description : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.offset, forKey: .offset)
        try container.encodeIfPresent(self.description, forKey: .description)
    }
    enum CodingKeys: CodingKey {
        case offset
        case description
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.offset = try container.decodeIfPresent(String.self, forKey: .offset)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
    }
}

struct Login : Codable {
    var uuid : String?
    var username : String?
    var password : String?
    var salt : String?
    var md5 : String?
    var sha1 : String?
    var sha256 : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.uuid, forKey: .uuid)
        try container.encodeIfPresent(self.username, forKey: .username)
        try container.encodeIfPresent(self.password, forKey: .password)
        try container.encodeIfPresent(self.salt, forKey: .salt)
        try container.encodeIfPresent(self.md5, forKey: .md5)
        try container.encodeIfPresent(self.sha1, forKey: .sha1)
        try container.encodeIfPresent(self.sha256, forKey: .sha256)
    }
    enum CodingKeys: CodingKey {
        case uuid
        case username
        case password
        case salt
        case md5
        case sha1
        case sha256
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.uuid = try container.decodeIfPresent(String.self, forKey: .uuid)
        self.username = try container.decodeIfPresent(String.self, forKey: .username)
        self.password = try container.decodeIfPresent(String.self, forKey: .password)
        self.salt = try container.decodeIfPresent(String.self, forKey: .salt)
        self.md5 = try container.decodeIfPresent(String.self, forKey: .md5)
        self.sha1 = try container.decodeIfPresent(String.self, forKey: .sha1)
        self.sha256 = try container.decodeIfPresent(String.self, forKey: .sha256)
    }
    
}

struct Dob : Codable {
    var date : String?
    var age : Int?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.age, forKey: .age)
    }
    enum CodingKeys: CodingKey {
        case date
        case age
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(String.self, forKey: .date)
        self.age = try container.decodeIfPresent(Int.self, forKey: .age)
    }
    
}

struct Registered : Codable {
    var date : String?
    var age : Int?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.age, forKey: .age)
    }
    enum CodingKeys: CodingKey {
        case date
        case age
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(String.self, forKey: .date)
        self.age = try container.decodeIfPresent(Int.self, forKey: .age)
    }
}

struct Id : Codable {
    var name : String?
    var value : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.value, forKey: .value)
    }
    enum CodingKeys: CodingKey {
        case name
        case value
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.value = try container.decodeIfPresent(String.self, forKey: .value)
    }
}
struct Picture : Codable {
    var large : String?
    var medium : String?
    var thumbnail : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.large, forKey: .large)
        try container.encodeIfPresent(self.medium, forKey: .medium)
        try container.encodeIfPresent(self.thumbnail, forKey: .thumbnail)
    }
    enum CodingKeys: CodingKey {
        case large
        case medium
        case thumbnail
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.large = try container.decodeIfPresent(String.self, forKey: .large)
        self.medium = try container.decodeIfPresent(String.self, forKey: .medium)
        self.thumbnail = try container.decodeIfPresent(String.self, forKey: .thumbnail)
    }
}

struct Info : Codable {
    var seed : String?
    var results : Int?
    var page : Int?
    var version : String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.seed, forKey: .seed)
        try container.encodeIfPresent(self.results, forKey: .results)
        try container.encodeIfPresent(self.page, forKey: .page)
        try container.encodeIfPresent(self.version, forKey: .version)
    }
    enum CodingKeys: CodingKey {
        case seed
        case results
        case page
        case version
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.seed = try container.decodeIfPresent(String.self, forKey: .seed)
        self.results = try container.decodeIfPresent(Int.self, forKey: .results)
        self.page = try container.decodeIfPresent(Int.self, forKey: .page)
        self.version = try container.decodeIfPresent(String.self, forKey: .version)
    }
}
