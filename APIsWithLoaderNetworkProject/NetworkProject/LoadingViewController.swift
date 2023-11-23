//
//  LoadingViewController.swift
//  NetworkProject
//
//  Created by Uday Patil on 30/12/22.
//

import UIKit

class LoadingViewController: UIViewController {
    
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        loadingIndicator.startAnimating()
    }
    override func viewDidDisappear(_ animated: Bool) {
        loadingIndicator.stopAnimating()
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
extension UIViewController {
    func showLoading(){
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loadingVC = storyboard.instantiateViewController(withIdentifier: "LoadingViewController")
        loadingVC.view.tag = 100
        loadingVC.view.frame = self.view.bounds
        
        self.view.addSubview(loadingVC.view)
    }
    
    func removeLoading() {
        
        let views = self.view.subviews.filter({ $0.tag == 100 })
        if views.count > 0{
            let view = views[0]
            view.removeFromSuperview()
        }
    }
}

