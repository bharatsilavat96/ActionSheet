//
//  ResponseViewController.swift
//  NetworkProject
//
//  Created by Uday Patil on 29/12/22.
//

import UIKit

class ResponseViewController: UIViewController, ConnectionManagerDelegate {
    
    func didCompleteTaskWithResponse(data: Data?, error: Error?) {
        DispatchQueue.main.async {
            self.removeLoading()
            
//            self.loadingView.isHidden = true
//            self.loadingIndicator.stopAnimating()
//            self.view.isUserInteractionEnabled = true
        }
        if error == nil {
            guard let data = data else {
                return
            }
            let text = String(data: data, encoding: .utf8)
            DispatchQueue.main.async {
                self.responseView.text = text
            }
        }
        else {
            DispatchQueue.main.async {
                self.responseView.text = "Error"
            }
        }
    }

    var api: API?
    
    @IBOutlet weak var responseView: UITextView!
    
    @IBOutlet weak var loadingView: UIView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loadingLabel: UILabel!
    
    let manager = ConnectionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingView.isHidden = true
        self.manager.delegate = self
        
        //self.responseView.text = self.api?.rawValue
    }
    
    override func viewDidAppear(_ animated: Bool) {
          self.showLoading()
          self.manager.startSession()
        
//        loadingView.isHidden = false
//        loadingIndicator.startAnimating()
//        self.view.isUserInteractionEnabled = false
    }
}
