//
//  FourthViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class FourthViewController: UIViewController {
 
    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    var headersCountries: [String] = ["India","USA","Autralia","Germany","Franch","Israil"]
    @IBOutlet weak var staticTableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        staticTableView.dataSource = self
        staticTableView.delegate = self
        self.staticTableView.isEditing = true
    }
    
    @IBAction func reloadData(sender: Any){
        self.staticTableView.reloadData()
    }
}
extension FourthViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section : \(headersCountries[section])"
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headersCountries.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NamesCell", for: indexPath)
        cell.textLabel?.text = "Section: \(indexPath.section) , Row: \(indexPath.row) \(nameArray[indexPath.row])"
        return cell
    }
}
extension FourthViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedHeader = self.headersCountries[sourceIndexPath.section] // Use sourceIndexPath.section
        headersCountries.remove(at: sourceIndexPath.section) // Use sourceIndexPath.section
        headersCountries.insert(movedHeader, at: destinationIndexPath.section) // Use destinationIndexPath.section
    }
}
