//
//  TopLeftRightBottomViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class TopLeftRightBottomViewController: UIViewController {

    
    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    var headersCountries: [String] = ["India","USA","Autralia","Germany","Franch","Israil"]
    
    @IBOutlet weak var tBLRTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tBLRTableView.delegate = self
        tBLRTableView.dataSource = self
        tBLRTableView.reloadData()
    }
    
    @IBAction func reloadData(sender: Any){
        self.tBLRTableView.reloadData()
    }
    
}
extension TopLeftRightBottomViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WaveCellTopBottom", for: indexPath)
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
        // Left To Right
        cell.alpha = 0
                cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y:cell.contentView.frame.height)
                UIView.animate(withDuration: 0.5, delay: 0.5*Double(indexPath.row), animations: {
                    cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: cell.contentView.frame.height)
                    cell.alpha = 1
                })
         
       //  right to left
        cell.alpha = 0
                cell.transform = CGAffineTransform(translationX: 0, y:cell.contentView.frame.height)
                UIView.animate(withDuration: 0.5, delay: 0.5*Double(indexPath.row), animations: {
                    cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: cell.contentView.frame.height)
                    cell.alpha = 1
                })
        // top to bottom
          cell.alpha = 0
                cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y:0)
                UIView.animate(withDuration: 0.5, delay: 0.5*Double(indexPath.row), animations: {
                    cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: cell.contentView.frame.height)
                    cell.alpha = 1
                })
         
        // bottom to top
        cell.alpha = 0
                cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y:cell.contentView.frame.height)
                UIView.animate(withDuration: 0.5, delay: 0.5*Double(indexPath.row), animations: {
                    cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: 0)
                    cell.alpha = 1
                })

    }
    
    
}
extension TopLeftRightBottomViewController: UITableViewDelegate{
    
}
