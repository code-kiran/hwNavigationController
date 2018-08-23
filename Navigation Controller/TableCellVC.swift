//
//  TableCellVC.swift
//  Navigation Controller
//
//  Created by kiran on 8/23/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class TableCellVC: UITableViewCell {

    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var userPassword: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
