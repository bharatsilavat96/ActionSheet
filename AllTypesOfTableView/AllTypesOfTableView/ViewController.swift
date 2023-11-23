//
//  ViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class ViewController: UIViewController {

    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    
    @IBOutlet weak var BasicTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController")
        BasicTableView.dataSource = self
        BasicTableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell1", for: indexPath)
//      cell.textLabel?.text = nameArray.joined()
//      cell.textLabel?.text = nameArray.randomElement()
//      cell.textLabel?.text = nameArray.description
//      cell.textLabel?.text = nameArray.formatted()
//      cell.textLabel?.text = nameArray[indexPath.row] // main Edit
//      cell.textLabel?.text = nameArray[indexPath.section] // Only FirstDataWill Show
//      cell.textLabel?.text = nameArray.sorted().description
//      cell.textLabel?.text = nameArray.shuffled().description
        cell.textLabel?.text = nameArray[indexPath.row]
        return cell
    }
    
    @IBAction func reloadData(sender: Any){
        self.BasicTableView.reloadData()
    }
}
extension ViewController: UITableViewDelegate{
    
}
