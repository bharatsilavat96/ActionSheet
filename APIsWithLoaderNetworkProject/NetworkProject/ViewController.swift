//
//  ViewController.swift
//  NetworkProject
//
//  Created by Uday Patil on 29/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    // take enums of type API in an array
    let apiArray: [API] = [.nagerdate, .randomuser, .coinpaprika, .teleport, .brewery, .bitcoin]
        
    
    // taken dictionary of type key as API and value as segue identifier
    let dict: [API : String] = [.nagerdate : "NagerDateAPI", .randomuser : "RandomUserAPI", .coinpaprika : "CoinPaprikaAPI", .teleport : "TeleportAPI", .brewery: "responseAPI", .bitcoin : "bitcoinAPI"]
    
    @IBOutlet weak var apiTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.apiTable.dataSource = self
        self.apiTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "One")
        
        let api: API = apiArray[indexPath.row]
            
        cell?.textLabel?.text = api.rawValue
        
        return cell!
    }
    
    // delegate method
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let api: API = apiArray[indexPath.row] // 0 => .nagerdate, 1=> randomuser ...keys
       
        let id: String = dict[api] ?? ""       // values...Segue identifier
        
        if id.count > 0 {
            self.performSegue(withIdentifier: id, sender: api)
        }
//        switch(api){
//        case .nagerdate:
//            self.performSegue(withIdentifier: "NagerDateAPI", sender: api)
//        case .randomuser:
//            self.performSegue(withIdentifier: "RandomUserAPI", sender: api)
//        case .coinpaprika:
//            self.performSegue(withIdentifier: "CoinPaprikaAPI", sender: api)
//        case .teleport:
//            self.performSegue(withIdentifier: "TeleportAPI", sender: api)
//
//        }
    }
    
    //Segue....for navingation.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier?.hasSuffix("API") == true {
            guard let api: API = sender as? API else {return} //typecast any to enum  
            
            var targetVc = segue.destination as? ConnectionManagerDelegate
            targetVc?.api = api
        }
    }
    
}



