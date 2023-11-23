//
//  AnimationTBViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class AnimationTBViewController: UIViewController {

    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    var headersCountries: [String] = ["India","USA","Autralia","Germany","Franch","Israil"]
    @IBOutlet weak var animationTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        animationTableView.delegate = self
        animationTableView.dataSource = self
        animationTableView.reloadData()
    }
    
    @IBAction func reloadDataButton(sender: Any){
        
        self.animationTableView.reloadData()
    }

}
extension AnimationTBViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimationCell", for: indexPath)
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
//MARK: - Animation Thing done Here 1 Animation Here
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0.5*Double(indexPath.row)) {
            cell.alpha = 1
        }
        
    }
}
extension AnimationTBViewController: UITableViewDelegate{
    
}
