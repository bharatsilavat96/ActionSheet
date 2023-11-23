//
//  SlideWithRoationViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class SlideWithRoationViewController: UIViewController {
    
    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    var headersCountries: [String] = ["India","USA","Autralia","Germany","Franch","Israil"]
    var newArray : [String] = []
    @IBOutlet weak var slideTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slideTableView.delegate = self
        slideTableView.dataSource = self
        self.slideTableView.reloadData()
        // SlideWithRotation
    }
    @IBAction func reloadDataAction(sender: Any){
        self.slideTableView.reloadData()
    }
    
    
}
extension SlideWithRoationViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SlideWithRotation", for: indexPath)
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
        if indexPath.row%2 == 0 {
            cell.transform = CGAffineTransform(translationX: tableView.bounds.width, y: 0)
            
            UIView.animate(
                withDuration: 0.5,
                delay: 0.5 * Double(indexPath.row),
                options: [.curveEaseInOut],
                animations: {
                    cell.transform = CGAffineTransform(translationX: 0, y: 0)
                })
            
        }else{
            cell.alpha = 0
            cell.transform = CGAffineTransform(rotationAngle: 180)
            UIView.animate(withDuration: 0.5, delay: 0.5*Double(indexPath.row), animations: {
                cell.transform = CGAffineTransform(rotationAngle: 0.0)
                cell.alpha = 1
            })
        }
    }
}
extension SlideWithRoationViewController: UITableViewDelegate{
    
}

