//
//  NagerDateViewController.swift
//  NetworkProject
//
//  Created by Uday Patil on 30/12/22.
//

import UIKit

class NagerDateViewController: UIViewController, ConnectionManagerDelegate {
  
    func didCompleteTaskWithResponse(data: Data?, error: Error?) {
        DispatchQueue.main.async {
             self.removeLoading()
//              self.nagerDateLoadingView.isHidden = true
//              self.nagerDateLoadingIndicator.stopAnimating()
//              self.view.isUserInteractionEnabled = true
        }
          if error == nil {
              guard let data = data else { return }
              let decoder = JSONDecoder()
              do {
                  self.publicHolidaysArray = try? decoder.decode([PublicHoliday].self, from: data)
              } catch let e {
                  print(e)
              }
              DispatchQueue.main.async {
                 self.dateNagerTableView.reloadData()
              }
          }
    }
    
    var api: API?
    var publicHolidaysArray: [PublicHoliday]?
    let connection = ConnectionManager()
    
    @IBOutlet weak var dateNagerTableView: UITableView!
   
    @IBOutlet weak var DataLoading: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateNagerTableView.dataSource = self
        dateNagerTableView.delegate = self
    
        connection.delegate = self
        
        //nagerDateLoadingView.isHidden = true
      }
    
    override func viewDidAppear(_ animated: Bool) {
       
        self.showLoading()
        connection.startSession()
//        nagerDateLoadingView.isHidden = false
//        nagerDateLoadingIndicator.startAnimating()
//        self.view.isUserInteractionEnabled = false
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension NagerDateViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return publicHolidaysArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NagerDateCell", for: indexPath)
        
       // guard let holidayData = publicHolidaysArray else { return cell }
        
        let celldata = publicHolidaysArray?[indexPath.row]

        cell.textLabel?.text = celldata?.localName
        cell.detailTextLabel?.text = celldata?.countryCode
        
        return cell
    }
}
