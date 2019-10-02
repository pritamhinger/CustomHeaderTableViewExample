//
//  ViewController.swift
//  CustomTableViewHeader
//
//  Created by Pritam Hinger on 01/10/19.
//  Copyright © 2019 AppDevelapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return tableView.frame.width
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = CustomHeaderCell()
        headerView.imageView.image = UIImage(named: "recipe")
        headerView.recipeTitleLabel.text = "Chocolate Cake"
        headerView.timingLabel.text = "30 Minutes"
        return headerView;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,for: indexPath) as! CustomCell
        var title = ""
        switch indexPath.row % 3 {
        case 0:
            title = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
        case 1:
            title="Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. "
        case 2:
            title = "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."
        default:
            title = "Invalid Title"
        }
        
        cell.titleLabel.text = "Cell No: \(indexPath.row + 1)\n" + title
        cell.descriptionLabel.text = "Description \(indexPath.row + 1)"
        return cell
    }
    
    
    
    let cellIdentifier = "Cell_Id"
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.register(CustomCell.self, forCellReuseIdentifier: cellIdentifier)
        // Do any additional setup after loading the view.
    }
    
    
}

