//
//  Network.swift
//  NetworkProject
//
//  Created by Uday Patil on 29/12/22.
//

import Foundation

protocol ConnectionManagerDelegate {
    var api: API? {get set}
    
    func didCompleteTaskWithResponse(data: Data?, error: Error?)
}

// given rawValues in enum ...

enum API : String {
    case nagerdate = "https://date.nager.at/api/v2/publicholidays/2020/US"
    case randomuser = "https://randomuser.me/api/"
    case coinpaprika = "https://api.coinpaprika.com/v1/coins/btc-bitcoin"
    case teleport = "https://api.teleport.org/api/urban_areas/teleport%3A9q8yy/scores/"
    case brewery = "https://api.openbrewerydb.org/breweries"
    case bitcoin = "https://api.coinpaprika.com/v1/tickers"
}

// Singleton class............only 1 instance... globally accessible throughout the app

class ConnectionManager {
    var delegate: ConnectionManagerDelegate?
    
    private let session = URLSession.shared   //.shared
    var url: String?
    
    init(){
        }
    
    // Session Start
    func startSession() {
        guard let delegate = delegate,
              let api = delegate.api else {return}
        let url = api.rawValue
        self.hitUrl(Url: url)
    }
    // hiturl which has parameter url as string, created instance of url(myUrl) which is built from parameter string,
    // then again created 2nd instance(request)from URLrequest class
    // then pass the request as parameter in session.datatask
    // hit url
    private func hitUrl(Url: String) {
        print(Url)
        guard let myUrl = URL(string: Url) else { return }
        let request = URLRequest(url: myUrl)
        session.dataTask(with: request, completionHandler: { data, response, error in
            
            guard let delegate = self.delegate else {
                return
            }
            delegate.didCompleteTaskWithResponse(data: data, error: error)
        }).resume()
    }
}
// Connectionmanager.shared   .....used in any class by writing this
