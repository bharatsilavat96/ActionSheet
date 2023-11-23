//
//  LinearAnimationViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class LinearAnimationViewController: UIViewController {

    
    
    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    var headersCountries: [String] = ["India","USA","Autralia","Germany","Franch","Israil"]
    
    @IBOutlet weak var linearTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        linearTableView.dataSource = self
        linearTableView.delegate = self
        linearTableView.reloadData()
        
    }
    
    @IBAction func reloadDataAction(sender: Any){
        self.linearTableView.reloadData()

    }
 
}
extension LinearAnimationViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LinearCell", for: indexPath)
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
        cell.transform =  CGAffineTransform(translationX: 0, y:0)
        
               UIView.animate(withDuration: 1, delay: 0.05*Double(indexPath.row), options: .curveLinear) {
                   cell.transform =  CGAffineTransform(translationX: cell.contentView.frame.width, y: cell.contentView.frame.height)
               }
    }
}
extension LinearAnimationViewController: UITableViewDelegate{
    
}

