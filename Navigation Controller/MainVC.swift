//
//  File.swift
//  Navigation Controller
//
//  Created by kiran on 8/23/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import Foundation
import UIKit


class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mainTableView: UITableView!
    
    var name: String?
    var password: String?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.delegate = self
        mainTableView.dataSource = self
//        print(name)
//        print(password)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableCellVC
        cell.userLabel.text = name
        cell.userPassword.text = password
        return cell
    }

    
    @IBAction func btnLogout(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        mainTableView.reloadData()
    }
    
}
