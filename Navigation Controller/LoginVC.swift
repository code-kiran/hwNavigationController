//
//  LoginVC.swift
//  Navigation Controller
//
//  Created by kiran on 8/23/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import Foundation
import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//        let mainNavigationController = storyboard?.instantiateViewController(withIdentifier: "NavigationVC") as! NavigtionVC
//        present(mainNavigationController, animated: true, completion:nil)

    @IBAction func btnLogin(_ sender: Any) {
       navigateToMainInterface()
    }
    
    
    func navigateToMainInterface(){
        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard  let mainNavigationController = mainStoryBoard.instantiateViewController(withIdentifier: "NavigtionVC") as? NavigtionVC  else {
            return
        }
        present(mainNavigationController, animated: true, completion:nil)
        
//        print(mainNavigationController.topViewController!)
//        print(mainNavigationController.viewControllers)
        
        if let mainVC = mainNavigationController.topViewController as? MainVC {
         mainVC.name = loginTextField.text
        mainVC.password = passwordTextField.text
            
        }
        
        
    }
    
    
    
}

