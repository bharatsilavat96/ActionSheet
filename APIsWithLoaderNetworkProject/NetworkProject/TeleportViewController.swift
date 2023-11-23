//
//  TeleportViewController.swift
//  NetworkProject
//
//  Created by Uday Patil on 30/12/22.
//

import UIKit

class TeleportViewController: UIViewController, ConnectionManagerDelegate {
    
    func didCompleteTaskWithResponse(data: Data?, error: Error?) {
        DispatchQueue.main.async {
            self.removeLoading()
        }
        if error == nil {
            guard let data = data else { return }
            let decoder = JSONDecoder()
            do {
                self.teleportData = try decoder.decode(Teleport.self, from: data)
            }catch let e {
                print(e)
            }
            DispatchQueue.main.async {
                self.teleportTableView.reloadData()
            }
        }
    }
    
    var api: API?
    let connection = ConnectionManager()
    var teleportData: Teleport?
    
    @IBOutlet weak var teleportTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teleportTableView.dataSource = self
        teleportTableView.delegate = self
        connection.delegate = self
        
    }
    override func viewDidAppear(_ animated: Bool) {
        connection.startSession()
        self.showLoading()
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
extension TeleportViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teleportData?.categories?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teleportCell", for: indexPath)
        
        let teleportCell: Category = teleportData!.categories![indexPath.row]
        
        cell.textLabel?.text = teleportCell.name
        cell.textLabel?.text = teleportCell.color
        
        return cell
    }
    
    
}
