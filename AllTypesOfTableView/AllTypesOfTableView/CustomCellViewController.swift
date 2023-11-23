//
//  CustomCellViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class CustomCellViewController: UIViewController {
    
    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    @IBOutlet weak var tableView2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView2.dataSource = self
        tableView2.delegate = self
        
    }
}
extension CustomCellViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellTableViewCell", for: indexPath) as! CustomCellTableViewCell
        cell.userImageView.layer.masksToBounds = true
        cell.userImageView.layer.cornerRadius = cell.userImageView.frame.height/2
        cell.userImageView.image = UIImage(named: "Gold")
        cell.userNames.text = nameArray[indexPath.row]
        return cell
    }
    
    @IBAction func reloadData(sender: Any){
        self.tableView2.reloadData()
    }
    
}
extension CustomCellViewController: UITableViewDelegate{
    
}
