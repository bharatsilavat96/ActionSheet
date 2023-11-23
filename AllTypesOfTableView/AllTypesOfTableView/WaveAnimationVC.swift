//
//  WaveAnimationVC.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class WaveAnimationVC: UIViewController {
    
    var nameArray: [String] = ["Bharat","Namrita","Chhaya","Priya","Suneel","Ranu","Jitendra","Pappu","Raj"]
    var headersCountries: [String] = ["India","USA","Autralia","Germany","Franch","Israil"]
    @IBOutlet weak var waveAnimationTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        waveAnimationTable.dataSource = self
        waveAnimationTable.delegate = self
        
    }
    @IBAction func reloadData(sender: Any){
        self.waveAnimationTable.reloadData()
    }
    
    //WaveCell
}
extension WaveAnimationVC: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WaveCell", for: indexPath)
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
        cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: 0)
        UIView.animate(withDuration: 5, delay: 0.06*Double(indexPath.row), usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: .curveEaseIn, animations: {
            cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: cell.contentView.frame.height)
        })
        
    }
}
extension WaveAnimationVC: UITableViewDelegate{
    
}
