//
//  CardTableViewCell.swift
//  AllTypesOfTableView
//
//  Created by Bharat Silavat on 02/02/23.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    var isFlipped: Bool = false
        
        // Front and back views
        let frontView = UIView()
        let backView = UIView()
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            self.backgroundColor = .clear
            setupUI()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupUI()
        }
        
        func setupUI() {
            // Customize your cell UI, for example, set background color and labels.
            // Example:
            
            // Front view
            frontView.backgroundColor = .random // Random color
            frontView.layer.cornerRadius = 15
            addSubview(frontView)
            
            // Back view
            backView.backgroundColor = .random // Another random color
            backView.layer.cornerRadius = 15
            addSubview(backView)
            
            // Set up constraints for frontView and backView to cover the cell's content
            frontView.translatesAutoresizingMaskIntoConstraints = false
            backView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                frontView.topAnchor.constraint(equalTo: topAnchor, constant: -6),
                frontView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
                frontView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
                frontView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -6),
                
                backView.topAnchor.constraint(equalTo: topAnchor, constant: -6),
                backView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
                backView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
                backView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -6),
            ])
            
            // Initially, show the front view
            bringSubviewToFront(frontView)
        }
        
        func flip() {
            
            
            let fromView = isFlipped ? frontView : backView
            let toView = isFlipped ? backView : frontView
            
            UIView.transition(from: fromView, to: toView, duration: 0.5, options: .transitionFlipFromLeft, completion: nil)
            isFlipped.toggle()
        }
}
