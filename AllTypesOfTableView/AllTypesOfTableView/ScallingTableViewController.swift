//
//  ScallingTableViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class ScallingTableViewController: UIViewController {

    
    @IBOutlet weak var scallingTableView: UITableView!
    
    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    var headersCountries: [String] = ["India","USA","Autralia","Germany","Franch","Israil"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scallingTableView.dataSource = self
        scallingTableView.delegate = self
        self.scallingTableView.reloadData()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func reloadData(sender: Any){
        self.scallingTableView.reloadData()
    }
}
extension ScallingTableViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScallingCell", for: indexPath)
        cell.textLabel?.text = nameArray[indexPath.row]
        if (indexPath.row % 2 == 0){
            cell.backgroundColor = .red
            cell.textLabel?.textColor = .white
        }else {
            cell.backgroundColor = .green
            cell.textLabel?.textColor = .red
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.transform = CGAffineTransform(scaleX: 0, y: 0)
               UIView.animate(withDuration: 2, animations: {
                   cell.transform = CGAffineTransform(scaleX: 1, y:1)
               })
    }
}
extension ScallingTableViewController: UITableViewDelegate{
    
}

