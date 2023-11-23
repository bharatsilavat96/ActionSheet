//
//  TopViewController.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 03/02/23.
//

import UIKit

class TopViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TOP VC")

    }
    
    @IBAction func firstAnimationVC(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func secondAnimationVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CustomCellViewController") as! CustomCellViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func thirdAnimationVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ThirdTableViewController") as! ThirdTableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func fourthAnimationVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func fifthAnimationVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func sixthtAnimationVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AnimationTBViewController") as! AnimationTBViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func seventhAnimationVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WaveAnimationVC") as! WaveAnimationVC
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func aightAnimationVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TopLeftRightBottomViewController") as! TopLeftRightBottomViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func ninthAnimationVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LinearAnimationViewController") as! LinearAnimationViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func tenthAnimationVC(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RotationalViewController") as! RotationalViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

//    @IBAction func eleventhAnimationVC(_ sender: Any) {
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ScallingTableViewController") as! ScallingTableViewController
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
    @IBAction func slideVC(sender: Any){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SlideWithRoationViewController") as! SlideWithRoationViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func cardView(sender: UIButton){
        print("Card View Button Tapped")
        
    }
    
    
}
