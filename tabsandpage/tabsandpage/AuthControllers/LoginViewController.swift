//
//  LoginViewController.swift
//  tabsandpage
//
//  Created by Ruben Mimoun on 11/11/2021.
//

import Foundation
import UIKit

class LoginViewController : UIViewController, AuthPageStoryboard{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
    @IBAction func loginAction(_ sender: Any) {
        Router.showNotesTabs()
    }
}
