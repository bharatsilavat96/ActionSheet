//
//  BitcoinViewController.swift
//  NetworkProject
//
//  Created by Uday Patil on 04/01/23.
//

import UIKit

class BitcoinViewController: UIViewController, ConnectionManagerDelegate {

    var api: API?
    
    var bitcoinData: [Currency]?
    
    let connection = ConnectionManager()
    
    
    
    func didCompleteTaskWithResponse(data: Data?, error: Error?) {
//        DispatchQueue.main.async {
//            self.removeLoading()
//        }
        if error == nil {
            guard let data = data else { return }
            let decoder = JSONDecoder()
            do {
                self.bitcoinData = try decoder.decode([Currency].self, from: data)
            }catch let e {
                print(e)
            }
            DispatchQueue.main.async {
                self.bitCoinTableView.reloadData()
            }
        }
    }
    
   
    @IBOutlet weak var bitCoinTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bitCoinTableView.dataSource = self
        bitCoinTableView.delegate = self
        connection.delegate = self
    }
    override func viewDidAppear(_ animated: Bool) {
        connection.startSession()
    }
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
extension BitcoinViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bitcoinData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BitcoinTableViewCell", for: indexPath) as! BitcoinTableViewCell
        
        let nameData: Currency = (bitcoinData![indexPath.row])
        
        cell.nameLabel?.text = nameData.name
//        print(nameData.name)
        cell.symbolLabel?.text = nameData.symbol
//        print(nameData.symbol)
        cell.totalSupplyLabel?.text = "\(nameData.totalSupply ?? 0)"// value is int so convert int to String
//        print(nameData.totalSupply)
        cell.lastUpdatedLabel?.text = nameData.lastUpdated
//        print(nameData.lastUpdated)

        return cell
    }
}
