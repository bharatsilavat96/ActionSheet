//
//  RotationalViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class RotationalViewController: UIViewController {
    
    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    var headersCountries: [String] = ["India","USA","Autralia","Germany","Franch","Israil"]
    
    @IBOutlet weak var rotationalTavleView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rotationalTavleView.dataSource = self
        self.rotationalTavleView.delegate = self
        self.rotationalTavleView.reloadData()
        // RotationalCell
    }
    
    @IBAction func reloadDataAction(sender: Any){
        self.rotationalTavleView.reloadData()
    }
}
extension RotationalViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RotationalCell", for: indexPath)
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
        cell.alpha = 0
        cell.transform = CGAffineTransform(rotationAngle: 180)
        UIView.animate(withDuration: 0.5, delay: 0.5*Double(indexPath.row), animations: {
            cell.transform = CGAffineTransform(rotationAngle: 0.0)
            cell.alpha = 1
        })
    }
}
extension RotationalViewController: UITableViewDelegate{
    
}

