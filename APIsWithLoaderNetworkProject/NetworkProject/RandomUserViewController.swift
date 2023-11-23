//
//  RandomUserViewController.swift
//  NetworkProject
//
//  Created by Uday Patil on 30/12/22.
//

import UIKit

class RandomUserViewController: UIViewController, ConnectionManagerDelegate {
    
    func didCompleteTaskWithResponse(data: Data?, error: Error?) {
      DispatchQueue.main.async {
              self.removeLoading()
      }
        if error == nil {
                guard let data = data else { return }
                let decoder = JSONDecoder()
                do {
                    self.userData = try decoder.decode(RandomUser.self, from: data)
                } catch let e {
                    print(e)
                }
            DispatchQueue.main.async {
                self.randomUserData.reloadData()
            }
        }
    }
    
    var api: API?
    let connection = ConnectionManager()
    var userData: RandomUser? //create var of main class ie RandomUser
    
    @IBOutlet weak var randomUserData: UITableView!
    
    @IBOutlet weak var userLoadingView: UIView!
    @IBOutlet weak var userLoadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var userLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        connection.delegate = self
        //userLoadingView.isHidden = true
        
        randomUserData.dataSource = self
        randomUserData.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.showLoading()
        connection.startSession()
    }
}

extension RandomUserViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userData?.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RandomUserDataCell", for: indexPath)
        
        let celldata : Result = userData!.results![indexPath.row]
        cell.textLabel?.text = celldata.gender
        cell.detailTextLabel?.text = celldata.email
      
        return cell
    }
    
    
}
