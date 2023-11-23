//
//  ThirdTableViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class ThirdTableViewController: UIViewController {
    
    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    @IBOutlet weak var thirdTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thirdTableView.dataSource = self
        let cellNib = UINib(nibName: "ThirdTableViewNibCell", bundle: nil)
        thirdTableView.register(cellNib, forCellReuseIdentifier: "ThirdTableViewNibCell")
    }
    
    @IBAction func reloadData(sender: Any){
        self.thirdTableView.reloadData()
    }
    
}
extension ThirdTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdTableViewNibCell") as? ThirdTableViewNibCell {
            cell.userNames.text = nameArray[indexPath.row]
            cell.userImage2View.image = UIImage(named: "Gold")
            return cell
        }
        return UITableViewCell()
    }
    
    
    
}
