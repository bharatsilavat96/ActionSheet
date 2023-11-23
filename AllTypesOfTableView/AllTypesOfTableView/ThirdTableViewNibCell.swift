//
//  ThirdTableViewNibCell.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class ThirdTableViewNibCell: UITableViewCell {

    @IBOutlet weak var userImage2View: UIImageView!
    @IBOutlet weak var userNames: UILabel!
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
//    func makeCircularImg(withImageNamed imageName: String)->UIImageView {
//
//        let imageView = UIImageView(frame: userImage2View.frame)
//        imageView.image = UIImage(named: imageName)
//        imageView.layer.masksToBounds = true
//        imageView.layer.cornerRadius = imageView.frame.height/2
//        return imageView
//
//    }
}
