//
//  CoinPaprikaViewController.swift
//  NetworkProject
//
//  Created by Uday Patil on 30/12/22.
//

import UIKit

class CoinPaprikaViewController: UIViewController, ConnectionManagerDelegate {
    
    func didCompleteTaskWithResponse(data: Data?, error: Error?) {
        DispatchQueue.main.async {
           self.removeLoading()
        }
          if error == nil {
              guard let data = data else { return }
              let decoder = JSONDecoder()
              do {
                  self.bitcoinData = try decoder.decode(CoinPaprika.self, from: data)
              } catch let e {
                  print(e)
              }
              DispatchQueue.main.async {
                 self.coinPaprikaTableView.reloadData()
              }
          }
    }
    var api: API?
    let connection = ConnectionManager()
    var bitcoinData: CoinPaprika?
    
 
    @IBOutlet weak var coinPaprikaTableView: UITableView!
    
    @IBOutlet weak var coinLoadingView: UIView!
    @IBOutlet weak var coinLoadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var coinLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        connection.delegate = self
        coinPaprikaTableView.dataSource = self
        coinPaprikaTableView.delegate = self
        //coinLoadingView.isHidden = true
    }
    override func viewDidAppear(_ animated: Bool) {
        self.showLoading()
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

extension CoinPaprikaViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bitcoinData?.tags?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "coinCell", for: indexPath)
        
        let cellData: Tags = bitcoinData!.tags![indexPath.row]
       // cell.textLabel?.text = "My Dat is Not here"
        cell.textLabel?.text = cellData.name
        
        return cell
    }
    
    
}
