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
        imageView.contentMode = ContentMode.scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
