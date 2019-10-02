//
//  CustomHeaderCell.swift
//  CustomTableViewHeader
//
//  Created by Pritam Hinger on 01/10/19.
//  Copyright © 2019 AppDevelapp. All rights reserved.
//

import UIKit

class CustomHeaderCell: UIView{
    
    let imageView:UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = ContentMode.scaleToFill
        return imageView
    }()
    
    let recipeTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .red
        label.numberOfLines = 0
        label.minimumScaleFactor = 0.5
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    let timingLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        addSubview(imageView)
        addSubview(recipeTitleLabel)
        addSubview(timingLabel)
        
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        //imageView.bottomAnchor.constraint(equalTo: recipeTitleLabel.topAnchor).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        timingLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        timingLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        timingLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        timingLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        timingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        recipeTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        recipeTitleLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        recipeTitleLabel.bottomAnchor.constraint(equalTo: timingLabel.topAnchor).isActive = true
        recipeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
